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

<body package="JMSScheduler" selector="register">register	"self register"		| application |	application := Seaside.WAAdmin register: self asApplicationAt: 'scheduler'.	application preferenceAt: #sessionClass put: SchedulerSession.	application addLibrary: SchedulerListStyle.</body>
</methods>


<methods>
<class-id>JMSScheduler.LoginComponent</class-id> <category>rendering</category>

<body package="JMSScheduler" selector="renderContentOn:">renderContentOn: html		html heading		level: 1;		with: 'Please Enter Your Name'.	html text: '*to see all appointments, enter "Admin"*'.	html break;break.	(html form)		class: 'outer';		with: 				[html text: 'name: '.				html textInput callback: [:v | username := v].				html break.				(html submitButton)					callback: [self login];					with: 'Login']</body>
</methods>

<methods>
<class-id>JMSScheduler.LoginComponent</class-id> <category>hooks</category>

<body package="JMSScheduler" selector="style">style	^'.lc-outer {}'</body>
</methods>

<methods>
<class-id>JMSScheduler.LoginComponent</class-id> <category>callbacks</category>

<body package="JMSScheduler" selector="login">login	"Username/password valid"	self session username: username.	self call: SchedulerListComponent new</body>
</methods>


<methods>
<class-id>JMSScheduler.Appointment class</class-id> <category>instance creation</category>

<body package="JMSScheduler" selector="name:date:time:doctor:">name: n	date: d time: t doctor: dr^self new		name: n;		date: d;		time: t;		doctor: dr;		yourself</body>

<body package="JMSScheduler" selector="newAppointment">newAppointment^self new		date: (Date newDay: 1 month: 'January' year: 2001);		yourself</body>
</methods>


<methods>
<class-id>JMSScheduler.Appointment</class-id> <category>accessing</category>

<body package="JMSScheduler" selector="date:">date: anObject	date := anObject</body>

<body package="JMSScheduler" selector="time">time	^time</body>

<body package="JMSScheduler" selector="doctor">doctor	^doctor</body>

<body package="JMSScheduler" selector="name:">name: anObject	name := anObject</body>

<body package="JMSScheduler" selector="time:">time: anObject	time := anObject</body>

<body package="JMSScheduler" selector="date">date	^date</body>

<body package="JMSScheduler" selector="name">name	^name</body>

<body package="JMSScheduler" selector="doctor:">doctor: anObject	doctor := anObject</body>
</methods>

<methods>
<class-id>JMSScheduler.Appointment</class-id> <category>printing</category>

<body package="JMSScheduler" selector="printOn:">printOn: aStream	aStream nextPutAll: self name, ', ' , self date shortPrintString, ', ' , self time , ', ' , self doctor</body>
</methods>


<methods>
<class-id>JMSScheduler.SchedulerListComponent</class-id> <category>rendering</category>

<body package="JMSScheduler" selector="renderContentOn:">renderContentOn: html	| newAppointment |	self session username = 'Admin'		ifTrue: [	(html heading)		class: 'outer';		level: 1;		with: 'All Current Appointments '.	html unorderedList		with: [self appointments do: [:appointment |				html listItem					with: [html anchor								callback: [self viewAppointment: appointment];								with: appointment printString.						html space; space.						html anchor								callback: [self editAppointment: appointment];								with: 'edit'.						html space; space.						html anchor								callback: [self removeAppointment: appointment];								with: 'remove']]]]		ifFalse:[	(html heading)		level: 1;		with: self session username, ' Current Schedule '.	html unorderedList		with: [self appointments do: [:appointment | self session username = appointment name ifTrue: [				html listItem					with: [html anchor								callback: [self viewAppointment: appointment];								with: appointment printString.						html space; space.						html anchor								callback: [self editAppointment: appointment];								with: 'edit'.						html space; space.						html anchor								callback: [self removeAppointment: appointment];								with: 'remove']]]]].	html anchor		callback: [newAppointment := Appointment newAppointment.				self database addAppointment: newAppointment.				self editAppointment: newAppointment];			with: 'New Appointment'.</body>
</methods>

<methods>
<class-id>JMSScheduler.SchedulerListComponent</class-id> <category>database</category>

<body package="JMSScheduler" selector="appointments">appointments	^self database appointments</body>

<body package="JMSScheduler" selector="database">database	^AppointmentDatabase current</body>
</methods>

<methods>
<class-id>JMSScheduler.SchedulerListComponent</class-id> <category>callbacks</category>

<body package="JMSScheduler" selector="viewAppointment:">viewAppointment: aAppointment	self call: (ViewAppointmentComponent appointment: aAppointment)</body>

<body package="JMSScheduler" selector="editAppointment:">editAppointment: aAppointment	| component |	(self call: (component := EditAppointmentComponent appointment: aAppointment))		ifFalse: [^self]. "cancel"		aAppointment name: component name.	aAppointment date: component date.	aAppointment time: component time.	aAppointment doctor: component doctor.</body>

<body package="JMSScheduler" selector="removeAppointment:">removeAppointment: aAppointment	"self database appointments: OrderedCollection new"	(self confirm: 'Are you sure you want to delete this appointment?')		ifTrue: [self database removeAppointment: aAppointment]</body>
</methods>


<methods>
<class-id>JMSScheduler.SchedulerSession</class-id> <category>accessing</category>

<body package="JMSScheduler" selector="username:">username: anObject	username := anObject</body>

<body package="JMSScheduler" selector="username">username	^username</body>
</methods>


<methods>
<class-id>JMSScheduler.SchedulerListStyle</class-id> <category>accessing</category>

<body package="JMSScheduler" selector="MyCss">MyCss	^'html, body {		height: 100%;	}	html {		display: table;		margin: auto;}	body{		background-color: lightblue;		display: table-cell;	}'</body>

<body package="JMSScheduler" selector="selectorsToInclude">selectorsToInclude	^ #(MyCss)</body>
</methods>


<methods>
<class-id>JMSScheduler.AppointmentDatabase class</class-id> <category>sample data</category>

<body package="JMSScheduler" selector="addSampleDataTo:">addSampleDataTo:	aDatabase	"self addSampleDataTo: AppointmentDatabase current"		aDatabase addAppointment:		(Appointment name: 'Bob Marly' date: '10/11/12' time: '2:00' doctor: 'Dr. Phil').	aDatabase addAppointment:		(Appointment name: 'Stan Marsh' date: '10/12/12' time: '7:00' doctor: 'Dr. Bill').	aDatabase addAppointment:		(Appointment name: 'Stan Marsh' date: '10/12/12' time: '10:00' doctor: 'Dr. Phill').	aDatabase addAppointment:		(Appointment name: 'Man Marsh' date: '10/12/12' time: '7:00' doctor: 'Dr. Bill').</body>
</methods>

<methods>
<class-id>JMSScheduler.AppointmentDatabase class</class-id> <category>instance creation</category>

<body package="JMSScheduler" selector="new">new	^super new initialize</body>
</methods>

<methods>
<class-id>JMSScheduler.AppointmentDatabase class</class-id> <category>current database</category>

<body package="JMSScheduler" selector="current">current	^Current ifNil: [Current := self new]</body>
</methods>


<methods>
<class-id>JMSScheduler.AppointmentDatabase</class-id> <category>accessing</category>

<body package="JMSScheduler" selector="appointments:">appointments: anObject	appointments := anObject</body>
</methods>

<methods>
<class-id>JMSScheduler.AppointmentDatabase</class-id> <category>appointments</category>

<body package="JMSScheduler" selector="appointments">appointments	^appointments</body>

<body package="JMSScheduler" selector="addAppointment:">addAppointment: aAppointment	appointments add: aAppointment</body>

<body package="JMSScheduler" selector="removeAppointment:">removeAppointment: aAppointment	"appointments = OrderedCollection new"	appointments remove: aAppointment</body>
</methods>

<methods>
<class-id>JMSScheduler.AppointmentDatabase</class-id> <category>initialize-release</category>

<body package="JMSScheduler" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	appointments := OrderedCollection new.	^self</body>
</methods>


<methods>
<class-id>JMSScheduler.EditAppointmentComponent class</class-id> <category>instance creation</category>

<body package="JMSScheduler" selector="appointment:">appointment: aAppointment	^self new		name: aAppointment name;		date: aAppointment date;		time: aAppointment time;		doctor: aAppointment doctor;		yourself</body>
</methods>


<methods>
<class-id>JMSScheduler.EditAppointmentComponent</class-id> <category>accessing</category>

<body package="JMSScheduler" selector="doctor">doctor	^doctor</body>

<body package="JMSScheduler" selector="name:">name: anObject	name := anObject</body>

<body package="JMSScheduler" selector="time:">time: anObject	time := anObject</body>

<body package="JMSScheduler" selector="date">date	^date</body>

<body package="JMSScheduler" selector="name">name	^name</body>

<body package="JMSScheduler" selector="doctor:">doctor: anObject	doctor := anObject</body>

<body package="JMSScheduler" selector="date:">date: anObject	date := anObject</body>

<body package="JMSScheduler" selector="time">time	^time</body>
</methods>

<methods>
<class-id>JMSScheduler.EditAppointmentComponent</class-id> <category>rendering</category>

<body package="JMSScheduler" selector="renderContentOn:">renderContentOn: html	html heading		level: 1;		with: 'Appointment Editor'.		html form:		[html text: 'Name:'.		self session username = 'Admin'		ifTrue: [		html textInput			callback: [:v | self name: v];			value: self name.			]		ifFalse: [html text: ' ',self session username.			    self name: self session username].		html break.		html break.		html text: 'date:'.		html dateInput			callback: [:v | self date: v];			value: self date.		html break.		html break.		html text: 'Time:'.		html textInput			callback: [:v | self time: v];			value: self time.		html break.		html break.		html text: 'Doctor:'.		html select			list: #(#'Dr. Bonomo' #'Dr. Shaffer');			callback: [:value| 				value = #'Dr. Bonomo' 					ifTrue:[ self doctor: 'Dr. Bonomo']					ifFalse: [self doctor: 'Dr. Shaffer']					].		html break.		html break.		html submitButton			callback: [self answer: true];			value: 'Save'.		html submitButton			callback: [self answer: false];			value: 'Cancel']</body>
</methods>


<methods>
<class-id>JMSScheduler.ViewAppointmentComponent class</class-id> <category>As yet unclassified</category>

<body package="JMSScheduler" selector="appointment:">appointment: aAppointment^self new initializeAppointment: aAppointment</body>
</methods>


<methods>
<class-id>JMSScheduler.ViewAppointmentComponent</class-id> <category>initialize-release</category>

<body package="JMSScheduler" selector="initializeAppointment:">initializeAppointment: aAppointment		appointment := aAppointment.	^self</body>
</methods>

<methods>
<class-id>JMSScheduler.ViewAppointmentComponent</class-id> <category>rendering</category>

<body package="JMSScheduler" selector="renderContentOn:">renderContentOn: html	html heading		level: 1;		with: 'View Appointment'.	html text: 'Patient Name: ',appointment name;		break;		text: 'Appointment Date: ',appointment date shortPrintString;		break;		text: 'Appointment Time: ',appointment time;		break;		text: 'Doctor: ',appointment doctor.		html break.		html anchor		callback: [self answer];		with: 'Back'</body>
</methods>



</st-source>
