/*
 * CATS
 * Candidates Form Validation
 *
 * Copyright (C) 2005 - 2007 Cognizo Technologies, Inc.
 * All rights reserved.
 *
 * $Id: activityvalidator.js 2336 2007-04-14 22:01:51Z will $
 */

function checkActivityForm(form)
{
    var errorMessage = '';

    errorMessage += checkEventTitle();
    // errorMessage += checkInterviewerField ();

    if (errorMessage != '')
    {
        alert("Form Error:\n" + errorMessage);
        return false;
    }

    return true;
}

// function checkInterviewerField() {

//     var errorMessage = '';


//     fieldValue = document.getElementById('interviewerId').value;
//     fieldLabel = document.getElementById('interviewerLabel');
//     eventType = document.getElementById('eventTypeID').value;

//     if (eventType == 400){

    

//     if (fieldValue == '')
//     {
//         errorMessage = "    - You must enter an event title.\n";

//         fieldLabel.style.color = '#ff0000';
//     }
//     else
//     {
//         fieldLabel.style.color = '#000';
//     }
// }

//     return errorMessage;
// }


function checkEventTitle()
{
    var errorMessage = '';

    scheduleEvent = document.getElementById('scheduleEvent').checked;
    if (!scheduleEvent)
    {
        return '';
    }

    fieldValue = document.getElementById('title').value;
    fieldLabel = document.getElementById('titleLabel');

    if (fieldValue == '')
    {
        errorMessage = "    - You must enter an event title.\n";

        fieldLabel.style.color = '#ff0000';
    }
    else
    {
        fieldLabel.style.color = '#000';
    }

    return errorMessage;
}
