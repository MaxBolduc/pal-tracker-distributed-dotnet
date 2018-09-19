flyway -url="jdbc:mysql://localhost:3306/tracker_allocations_dotnet_dev" -user=tracker_dotnet -password=password  -locations=filesystem:Databases/allocations-database migrate

flyway -url="jdbc:mysql://localhost:3306/tracker_backlog_dotnet_dev" -user=tracker_dotnet -password=password  -locations=filesystem:Databases/backlog-database migrate

flyway -url="jdbc:mysql://localhost:3306/tracker_registration_dotnet_dev" -user=tracker_dotnet -password=password  -locations=filesystem:Databases/registration-database migrate

flyway -url="jdbc:mysql://localhost:3306/tracker_timesheets_dotnet_dev" -user=tracker_dotnet -password=password  -locations=filesystem:Databases/timesheets-database migrate

flyway -url="jdbc:mysql://localhost:3306/tracker_allocations_dotnet_test" -user=tracker_dotnet -password=password  -locations=filesystem:Databases/allocations-database migrate

flyway -url="jdbc:mysql://localhost:3306/tracker_backlog_dotnet_test" -user=tracker_dotnet -password=password  -locations=filesystem:Databases/backlog-database migrate

flyway -url="jdbc:mysql://localhost:3306/tracker_registration_dotnet_test" -user=tracker_dotnet -password=password  -locations=filesystem:Databases/registration-database migrate

flyway -url="jdbc:mysql://localhost:3306/tracker_timesheets_dotnet_test" -user=tracker_dotnet -password=password  -locations=filesystem:Databases/timesheets-database migrate