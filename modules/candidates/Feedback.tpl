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
                    <form id="feedbackFrom" method="post" name="feedbackForm">
                        <div class="formatting-buttons">
                            <button type="button" name="italicFeedback" onclick="applyItalic()"><i>I</i></button>
                            <button type="button" name="boldFeedback" onclick="applyBold()"><b>B</b></button>
                            <button type="button" name="centerFeedback" onclick="applyTextAlignment('center')">&#x2194;
                                Center</button>
                            <button type="button" name="leftalignFeedback" onclick="applyTextAlignment('left')">&#x2190;
                                Left</button>
                            <button type="button" name="rightalignFeedback"
                                onclick="applyTextAlignment('right')">&#x2192; Right</button>
                            <button type="button" name="justifyalignFeedback"
                                onclick="applyTextAlignment('justify')">&#x21C4; Justify</button>
                        </div>
                        <input type="hidden" name="postback" value="1">
                        <input type="hidden" name="candidateId" value="<?php $this->_($this->eventDetails['candidateId']); ?>" >
                        <input type="hidden" name="calendar_event_id" value="<?php $this->_($this->eventDetails['calendar_event_id']); ?>" >

                        <textarea id="displayTextarea" rows="15" name="feedbackText"></textarea>

                        <button type="submit" name="feedbackSubmit"> Submit</button>
                        <button type="reset"> Reset</button>

                    </form>
                </td>
            </tr>

        </table>

        <script>
            function updateDisplay() {
                var text = document.getElementById('textInput').value;
                document.getElementById('displayTextarea').value = text;
            }

            function applyItalic() {
                var textarea = document.getElementById('displayTextarea');
                textarea.style.fontStyle = "italic";
            }

            function applyBold() {
                var textarea = document.getElementById('displayTextarea');
                textarea.style.fontWeight = "bold";
            }

            function applyTextAlignment(value) {
                var textarea = document.getElementById('displayTextarea');
                textarea.style.textAlign = value;
            }
        </script>
    </div>
<?php TemplateUtility::printFooter(); ?>