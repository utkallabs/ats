<?php TemplateUtility::printHeader('Feedback on interview', array( 'js/highlightrows.js', 'js/export.js', 'js/dataGrid.js', 'js/dataGridFilters.js',  'js/candidate.js', 'https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css', 'https://code.jquery.com/jquery-3.7.0.slim.js', 'https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js', 'https://cdn.datatables.net/1.13.4/js/dataTables.jqueryui.min.js')); ?>
<?php TemplateUtility::printHeaderBlock(); ?>
<?php TemplateUtility::printTabs($this->active); ?>

<div id="main">
    <div id="contents">
        <table width="100%">
            <tr>
                <td width="3%">
                    <img src="images/candidate.gif" width="24" height="24" alt="Feedbacks"
                        style="border: none; margin-top: 3px;" />&nbsp;
                </td>
                <td>
                    <h2>Feedback</h2>
                </td>
            </tr>
        </table>

        <table>
            <tr>
                <td> <span>Candidate Name: </span> </td>
                <td> <span id="candidateInFeedbackId">
                        <?php $this->_($this->candidateInfo['candidateFullName']); ?>
                    </span> </td>
            </tr>

            <tr>
                <td> <span>Interview Level: </span> </td>
                <td> <span id="interviewLevelInFeedbackId">
                        <?php $this->_($this->candidateInfo['interviewLevel']); ?>
                    </span> </td>
            </tr>
            <tr>
                <td>Feedback:</td>
                <td>
                    <form id="feedbackFrom" method="post" name="feedbackForm">
                    <input type="hidden" name="postback" value="1">
                    <input type="hidden" name="candidateId" value="<?php $this->_($this->candidateInfo['candidateId']); ?>" >
                    <input type="hidden" name="calendar_event_id" value="<?php $this->_($this->candidateInfo['calendar_event_id']); ?>" >

                    <textarea id="editTextarea" rows="15" name="feedbackText"><?php $this->_($this->showFeedback['feedback']); ?></textarea>

                    <button type="submit" class="feedbackButton" name="feedbackSubmit">Update</button>
                </td>    
            </tr>
        
    </div>    
</div>