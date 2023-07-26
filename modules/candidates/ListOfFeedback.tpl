<?php TemplateUtility::printHeader('List Of Feedbacks', array( 'js/highlightrows.js', 'js/export.js', 'js/dataGrid.js', 'js/dataGridFilters.js',  'js/candidate.js', 'https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css', 'https://code.jquery.com/jquery-3.7.0.slim.js', 'https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js', 'https://cdn.datatables.net/1.13.4/js/dataTables.jqueryui.min.js')); ?>
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
                    <h2>List of Feedbacks</h2>
                </td>
            </tr>
        </table>

        <table>
            <tr>
                <td><strong>Candidate Name:</strong></td>
                <td><strong> <?php echo $this->candidateDetails[0]['candidateFullName']; ?></strong></td>
            </tr>

        <?php foreach ($this->candidateDetails as $key => $candidate): ?>
        <tr>
        <td>
        </td>
            <td>
                <span>Interviewer:</span> 
                <span><?php echo $candidate['interviewerFullName']; ?></span>
                <button class="accordion"><span id="interviewLevelInFeedbackId">
                <?php echo $candidate['interviewLevel']; ?> - Feedback
            </span></button>
                <div class="panel">
                    <?php echo html_entity_decode($candidate['Feedback']) ; ?>
                </div>
            </td>
        </tr>
        <?php endforeach; ?>

        
    </table>     
<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
</script>
</div> 
<?php TemplateUtility::printFooter(); ?>        
   
</div>        