# README
Part of theodinproject.com curriculum. This is (rails assignment project 9)[http://www.theodinproject.com/ruby-on-rails/associations?ref=lnav]

## Data models:

User:
	has_many :owner_events, :foreign_key => "Owner", :class_name => "Event"
	has_many :invitations
	has_many :invitee_events, :through => :invitations, :source => :event
	name:string
	age:integer

Event:
	belongs_to :owner, :class_name => "User"
	has_many :invitations
	has_many :invitees, through: :invitations, :source => :user
	owner_id:integer

	description:string
	location:string
	date:date

Invitation:
	belongs_to :user
	belongs_to :event

	status:string #only pending and accepted