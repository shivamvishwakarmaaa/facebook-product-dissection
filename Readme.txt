Facebook Social Media Platform Project
Overview
This project aims to dissect the operational framework of Facebook, a leading social media platform, by analyzing its core entities, relationships, and functionalities. The project explores the database schema, entity-relationship (ER) diagram, and key features of the platform.

Schema Description
The schema for the Facebook project involves multiple entities representing different aspects of the platform:

Users: Stores user information such as UserID, Username, Email, Password, DateOfBirth, and Gender.
Posts: Stores user-generated posts including content, media, and timestamps.
Comments: Stores comments made on posts, linked to the respective post and user.
Groups: Stores information about user-created groups, including the group name, description, admin user, and member count.
Events: Stores information about events organized within groups, including the event name, description, organizer user, location, start time, and end time.
Entity-Relationship (ER) Diagram
The ER diagram visually represents the relationships between the entities in the Facebook database:

Users (UserID) -------+ 1:N
    |
    |
    v
Posts (PostID) 

Posts (PostID) --------+ 1:N
    |
    |
    v
Comments (CommentID)

Users (UserID) -------+ 1:N
    |
    |
    v
Groups (GroupID)

Groups (GroupID) -------+ 1:N
    |
    |
    v
Events (EventID)

Features
User Management: Allows users to register, login, and manage their profiles.
Post Creation: Enables users to create and share posts with text, images, or videos.
Commenting: Allows users to comment on posts to engage in discussions.
Group Creation and Membership: Enables users to create and join groups based on interests or communities.
Event Organization: Allows users to create and manage events within groups for gatherings or activities.
Usage
To use the Facebook project:

Set up a PostgreSQL database and execute the SQL script provided in schema.sql to create the necessary tables.
Modify the database connection settings in the application code to connect to your PostgreSQL database.
Implement the required functionalities based on the project requirements and schema.
Contributors: Shivam Vishwakarma
