#  ------------------------
# |b                  b    |
# |    b                   |
# |           .            |
# |@          .        b   |
# |           .b           |
# |          b.           .|
# |i                     B>|
#  ------------------------

description "As you progress, you can't help but notice that things are changing around you. So many bugs..."
tip "No one likes bugs. Get rid of them if you can."
clue "The Queen is a terrific opponent. There is a way to defeat her without violence, if search deeply enough."

time_bonus 20 #TODO: Refine
ace_score 19 #TODO: Refine
size 24, 7
stairs 23, 6

warrior 0, 3, :east

unit :bug, 0, 0, :south do |u|
  u.log_message = "Win"
end
unit :bug, 19, 0, :south do |u|
  u.log_message = "Pizza is the best thing in life"
end
unit :bug, 4, 1, :west do |u|
  u.log_message = "Win"
end
unit :bug, 20, 3, :south
unit :bug, 12, 4, :east do |u|
  u.log_message = "And"
end
unit :bug, 10, 5, :west do |u|
  u.log_message = "Help"
end
unit :queen_bug, 22, 6, :west do |u|
  u.question = "What has the death of my children taught you?"
  u.acceptable_answers = ["Win and help win"]
end

unit :trap, 11, 2
unit :trap, 11, 3
unit :trap, 11, 4
unit :trap, 11, 5
unit :trap, 23, 5

unit :informant, 0, 6, :north do |u|
u.response = <<-TEXT
Brave warrior, The Queen Bug's riddle can be solved by looking at the logs of the bugs you've killed.
This ancient spell will make the logs available to you.

--- Elastic Stack Docker Setup Guide ---
# Step 1: Clone the Repository
  shell
  git clone git@github.com:elkninja/elastic-stack-docker-part-one.git
  cd elastic-stack-docker-part-one

# Step 2: Point Your Logs to EKL
To send your logs to the EKL (Elasticsearch, Kibana, Logstash) stack, create a new file inside the logstash_ingest_data folder and paste the contents of your logs into that file.

# Step 3: Restart Logstash
  docker-compose restart

# Step 4: Alternative Log Paths
If you prefer to point Logstash directly to the path of your logs directory, edit the docker-compose.yml file. Modify line 210 from ./logstash_ingest_data/ to your specific log path, e.g., /my_example_dir/.

# Step 5: Apply Changes
After making changes to the docker-compose.yml file, save it and restart the containers by running:
  shell
  docker-compose restart

# Step 6: Log in to the Dashboard
Check the .env file for login credentials to access the ELK (Elasticsearch, Logstash, Kibana) dashboard.

# Step 7: Set Up Data Views
Once logged into the ELK dashboard, navigate to:
Management > Stack Management > Kibana | Data Views
Create Data Views to make your logs searchable.

#  Step 8: Browse Logs
Go to Analytics > Discover to view and search through the logs using the configured index and filters.

# Step 9: Need Help?
If you encounter issues and need assistance, please try to contact these Slack channels:
#z-hackathon-ruby-warrior-next-gen
#z-ruby-warrior
  TEXT
end