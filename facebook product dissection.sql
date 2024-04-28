-- Create User table
CREATE TABLE Users (
    UserID SERIAL PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    DateOfBirth DATE,
    Gender VARCHAR(10)
);

-- Create Post table
CREATE TABLE Posts (
    PostID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES Users(UserID),
    Content TEXT,
    Media BYTEA, -- Store multimedia content as binary data
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Comment table
CREATE TABLE Comments (
    CommentID SERIAL PRIMARY KEY,
    PostID INTEGER REFERENCES Posts(PostID),
    UserID INTEGER REFERENCES Users(UserID),
    Content TEXT,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Group table
CREATE TABLE Groups (
    GroupID SERIAL PRIMARY KEY,
    GroupName VARCHAR(255) NOT NULL,
    Description TEXT,
    AdminUserID INTEGER REFERENCES Users(UserID),
    MemberCount INTEGER DEFAULT 0
);

-- Create Event table
CREATE TABLE Events (
    EventID SERIAL PRIMARY KEY,
    EventName VARCHAR(255) NOT NULL,
    Description TEXT,
    OrganizerUserID INTEGER REFERENCES Users(UserID),
    Location VARCHAR(255),
    StartTime TIMESTAMP,
    EndTime TIMESTAMP
);
