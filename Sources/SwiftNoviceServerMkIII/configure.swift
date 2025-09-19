import NIOSSL
import Fluent
import FluentPostgresDriver
import Vapor

// STEP 1: CREATE THE DATABASE VIA YOUR MIGRATIONS > CREATE PROJECTS & COURSES TABLES > THEN CALLS ROUTES.SWIFT FILE 
// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    app.databases.use(DatabaseConfigurationFactory.postgres(configuration: .init(
        hostname: Environment.get("DATABASE_HOST") ?? "localhost",
        port: Environment.get("DATABASE_PORT").flatMap(Int.init(_:)) ?? SQLPostgresConfiguration.ianaPortNumber,
        username: Environment.get("DATABASE_USERNAME") ?? "vapor_username",
        password: Environment.get("DATABASE_PASSWORD") ?? "vapor_password",
        database: Environment.get("DATABASE_NAME") ?? "vapor_database",
        tls: .prefer(try .init(configuration: .clientDefault)))
    ), as: .psql)
    
//    app.migrations.add(CreateCourseProjects())
//    app.migrations.add(CreateCoursez())
    app.migrations.add(CreateCourses())
    try app.autoMigrate().wait()

    // register routes
    try routes(app)
}
