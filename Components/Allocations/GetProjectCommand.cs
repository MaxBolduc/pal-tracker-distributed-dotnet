using System;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;
using Steeltoe.CircuitBreaker.Hystrix;
using Steeltoe.CircuitBreaker.Hystrix.Strategy.ExecutionHook;
using Steeltoe.CircuitBreaker.Hystrix.Strategy.Options;

namespace Allocations
{
    public class GetProjectCommand : HystrixCommand<ProjectInfo>
    {
        private readonly Func<long, Task<ProjectInfo>> _getProjectFn;
        private readonly long _projectId;
        private readonly Func<long, Task<ProjectInfo>> _getProjectFallbackFn;

        public GetProjectCommand(
            Func<long, Task<ProjectInfo>> getProjectFn,
            Func<long, Task<ProjectInfo>> getProjectFallbackFn,
            long projectId
        ) : base(HystrixCommandGroupKeyDefault.AsKey("ProjectClientGroup"))
        {
            _getProjectFn = getProjectFn;
            _projectId = projectId;
            _getProjectFallbackFn = getProjectFallbackFn;
        }

        protected override async Task<ProjectInfo> RunAsync() => await _getProjectFn(_projectId);
        protected override async Task<ProjectInfo> RunFallbackAsync() => await _getProjectFallbackFn(_projectId);
    }
}