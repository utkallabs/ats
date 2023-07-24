<?php TemplateUtility::printHeader('Feedback on interview', array( 'js/highlightrows.js', 'js/export.js', 'js/dataGrid.js', 'js/dataGridFilters.js',  'js/candidate.js',
'admin-lte/plugins/fontawesome-free/css/all.min.css', 
'admin-lte/dist/css/adminlte.min.css',
'admin-lte/plugins/summernote/summernote-bs4.min.css',
 'https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css',
 'https://code.jquery.com/jquery-3.7.0.slim.js',
  'https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js',
  'https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css',
  'https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css',
  'https://code.jquery.com/jquery-3.5.1.min.js',
  'https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js',
  'https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js',
  'https://cdn.datatables.net/1.13.4/js/dataTables.jqueryui.min.js')); ?>
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


        <form id="feedbackFrom" method="post" name="feedbackForm">
            <table>
                <tr>
                    <td> <span>Candidate Name: </span> </td>
                    <td> <span id="candidateInFeedbackId">
                            <?php $this->_($this->eventDetails['candidateFullName']); ?>
                        </span> </td>
                </tr>

                <tr>
                    <td> <span>Interview Level: </span> </td>
                    <td> <span id="interviewLevelInFeedbackId">
                            <?php $this->_($this->eventDetails['interviewLevel']); ?>
                        </span> </td>
                </tr>
                <tr>
                    <td>Feedback:</td>
                    <td>
                        <input type="hidden" name="postback" value="1">
                        <input type="hidden" name="candidateId"
                            value="<?php $this->_($this->eventDetails['candidateId']); ?>">
                        <input type="hidden" name="calendar_event_id"
                            value="<?php $this->_($this->eventDetails['calendar_event_id']); ?>">
                    </td>
                </tr>

            </table>
            <div class="card-body">
                <textarea id="summernote" name="feedbackText">Place <em>some</em> <u>text</u> <strong>here</strong></textarea>
                <button type="submit" name="feedbackSubmit"> Submit</button>
                <button type="reset"> Reset</button>
            </div>

</form>



        <script src="admin-lte/plugins/jquery/jquery.min.js"></script>
        <script src="admin-lte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="admin-lte/plugins/summernote/summernote-bs4.min.js"></script>

        <script>
            $(function() {
               
                // Summernote
                $('#summernote').summernote();

            })
        </script>  
  </div>
<?php TemplateUtility::printFooter(); ?>