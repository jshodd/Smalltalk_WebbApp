<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.1.1 of March 10, 2016 on December 7, 2016 at 10:48:10 PM</time-stamp>


<component-created>
<name>JMSScheduler</name> <type>package</type>
</component-created><!-- Package JMSScheduler* -->


<component-created>
<name>JMSScheduler</name> <type>package</type>
</component-created>

<name-space>
<name>JMSScheduler</name>
<environment>Smalltalk</environment>
<private>false</private>
<imports>
			private Core.*
			</imports>
<category></category>
<attributes>
<package>JMSScheduler</package>
</attributes>
</name-space>

<class>
<name>Appointment</name>
<environment>JMSScheduler</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name time date doctor </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JMSScheduler</package>
</attributes>
</class>

<class>
<name>SchedulerListComponent</name>
<environment>JMSScheduler</environment>
<super>Seaside.WAComponent</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JMSScheduler</package>
</attributes>
</class>

<class>
<name>SchedulerSession</name>
<environment>JMSScheduler</environment>
<super>Seaside.WASession</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>username </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JMSScheduler</package>
</attributes>
</class>

<class>
<name>SchedulerListStyle</name>
<environment>JMSScheduler</environment>
<super>Seaside.WAFileLibrary</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JMSScheduler</package>
</attributes>
</class>

<class>
<name>LoginComponent</name>
<environment>JMSScheduler</environment>
<super>Seaside.WAComponent</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>username </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JMSScheduler</package>
</attributes>
</class>

<class>
<name>AppointmentDatabase</name>
<environment>JMSScheduler</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>appointments </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JMSScheduler</package>
</attributes>
</class>

<class>
<name>EditAppointmentComponent</name>
<environment>JMSScheduler</environment>
<super>Seaside.WAComponent</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name date time doctor </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JMSScheduler</package>
</attributes>
</class>

<class>
<name>ViewAppointmentComponent</name>
<environment>JMSScheduler</environment>
<super>Seaside.WAComponent</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>appointment </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JMSScheduler</package>
</attributes>
</class>

<shared-variable>
<name>Current</name>
<environment>JMSScheduler.AppointmentDatabase</environment>
<private>false</private>
<constant>false</constant>
<category>As yet unclassified</category>
<attributes>
<package>JMSScheduler</package>
</attributes>
</shared-variable>



<methods>
<class-id>JMSScheduler.LoginComponent class</class-id> <category>instance creation</category>

<body package="JMSScheduler" selector="register">register
</methods>


<methods>
<class-id>JMSScheduler.LoginComponent</class-id> <category>rendering</category>

<body package="JMSScheduler" selector="renderContentOn:">renderContentOn: html
</methods>

<methods>
<class-id>JMSScheduler.LoginComponent</class-id> <category>hooks</category>

<body package="JMSScheduler" selector="style">style
</methods>

<methods>
<class-id>JMSScheduler.LoginComponent</class-id> <category>callbacks</category>

<body package="JMSScheduler" selector="login">login
</methods>


<methods>
<class-id>JMSScheduler.Appointment class</class-id> <category>instance creation</category>

<body package="JMSScheduler" selector="name:date:time:doctor:">name: n	date: d time: t doctor: dr

<body package="JMSScheduler" selector="newAppointment">newAppointment
</methods>


<methods>
<class-id>JMSScheduler.Appointment</class-id> <category>accessing</category>

<body package="JMSScheduler" selector="date:">date: anObject

<body package="JMSScheduler" selector="time">time

<body package="JMSScheduler" selector="doctor">doctor

<body package="JMSScheduler" selector="name:">name: anObject

<body package="JMSScheduler" selector="time:">time: anObject

<body package="JMSScheduler" selector="date">date

<body package="JMSScheduler" selector="name">name

<body package="JMSScheduler" selector="doctor:">doctor: anObject
</methods>

<methods>
<class-id>JMSScheduler.Appointment</class-id> <category>printing</category>

<body package="JMSScheduler" selector="printOn:">printOn: aStream
</methods>


<methods>
<class-id>JMSScheduler.SchedulerListComponent</class-id> <category>rendering</category>

<body package="JMSScheduler" selector="renderContentOn:">renderContentOn: html
</methods>

<methods>
<class-id>JMSScheduler.SchedulerListComponent</class-id> <category>database</category>

<body package="JMSScheduler" selector="appointments">appointments

<body package="JMSScheduler" selector="database">database
</methods>

<methods>
<class-id>JMSScheduler.SchedulerListComponent</class-id> <category>callbacks</category>

<body package="JMSScheduler" selector="viewAppointment:">viewAppointment: aAppointment

<body package="JMSScheduler" selector="editAppointment:">editAppointment: aAppointment

<body package="JMSScheduler" selector="removeAppointment:">removeAppointment: aAppointment
</methods>


<methods>
<class-id>JMSScheduler.SchedulerSession</class-id> <category>accessing</category>

<body package="JMSScheduler" selector="username:">username: anObject

<body package="JMSScheduler" selector="username">username
</methods>


<methods>
<class-id>JMSScheduler.SchedulerListStyle</class-id> <category>accessing</category>

<body package="JMSScheduler" selector="MyCss">MyCss

<body package="JMSScheduler" selector="selectorsToInclude">selectorsToInclude
</methods>


<methods>
<class-id>JMSScheduler.AppointmentDatabase class</class-id> <category>sample data</category>

<body package="JMSScheduler" selector="addSampleDataTo:">addSampleDataTo:	aDatabase
</methods>

<methods>
<class-id>JMSScheduler.AppointmentDatabase class</class-id> <category>instance creation</category>

<body package="JMSScheduler" selector="new">new
</methods>

<methods>
<class-id>JMSScheduler.AppointmentDatabase class</class-id> <category>current database</category>

<body package="JMSScheduler" selector="current">current
</methods>


<methods>
<class-id>JMSScheduler.AppointmentDatabase</class-id> <category>accessing</category>

<body package="JMSScheduler" selector="appointments:">appointments: anObject
</methods>

<methods>
<class-id>JMSScheduler.AppointmentDatabase</class-id> <category>appointments</category>

<body package="JMSScheduler" selector="appointments">appointments

<body package="JMSScheduler" selector="addAppointment:">addAppointment: aAppointment

<body package="JMSScheduler" selector="removeAppointment:">removeAppointment: aAppointment
</methods>

<methods>
<class-id>JMSScheduler.AppointmentDatabase</class-id> <category>initialize-release</category>

<body package="JMSScheduler" selector="initialize">initialize
</methods>


<methods>
<class-id>JMSScheduler.EditAppointmentComponent class</class-id> <category>instance creation</category>

<body package="JMSScheduler" selector="appointment:">appointment: aAppointment
</methods>


<methods>
<class-id>JMSScheduler.EditAppointmentComponent</class-id> <category>accessing</category>

<body package="JMSScheduler" selector="doctor">doctor

<body package="JMSScheduler" selector="name:">name: anObject

<body package="JMSScheduler" selector="time:">time: anObject

<body package="JMSScheduler" selector="date">date

<body package="JMSScheduler" selector="name">name

<body package="JMSScheduler" selector="doctor:">doctor: anObject

<body package="JMSScheduler" selector="date:">date: anObject

<body package="JMSScheduler" selector="time">time
</methods>

<methods>
<class-id>JMSScheduler.EditAppointmentComponent</class-id> <category>rendering</category>

<body package="JMSScheduler" selector="renderContentOn:">renderContentOn: html
</methods>


<methods>
<class-id>JMSScheduler.ViewAppointmentComponent class</class-id> <category>As yet unclassified</category>

<body package="JMSScheduler" selector="appointment:">appointment: aAppointment
</methods>


<methods>
<class-id>JMSScheduler.ViewAppointmentComponent</class-id> <category>initialize-release</category>

<body package="JMSScheduler" selector="initializeAppointment:">initializeAppointment: aAppointment
</methods>

<methods>
<class-id>JMSScheduler.ViewAppointmentComponent</class-id> <category>rendering</category>

<body package="JMSScheduler" selector="renderContentOn:">renderContentOn: html
</methods>



</st-source>