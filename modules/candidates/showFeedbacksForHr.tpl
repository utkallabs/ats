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
                    <h2>All Candidate's Interview Feedback </h2>
                </td>
            </tr>
        </table>
        <table class="longForm">

        <thead>
                <tr>
                    <th width="5%">Sl No</th>
                    <th>Candidate Name</th>
                    <th>Candidate Email</th>
                    <th>Show Feedbacks</th>
                </tr>
            </thead>

            <tbody>    
            <?php foreach ($this->candidates as $key => $candidate): ?>
            <tr>
                <td width="5%"><?php echo ++$key; ?></td>
                <td> <a href="<?php echo(CATSUtility::getIndexName()); ?>?m=candidates&amp;a=show&amp;candidateID=<?php echo $candidate['candidateId']; ?>"> 
                <?php echo $candidate['candidateFullName']; ?></a></td>
                <td><?php echo $candidate['email1'];?></td>
                <td><a href="<?php echo(CATSUtility::getIndexName()); ?>?m=candidates&amp;a=feedbacksShow&amp;candidateID=<?php echo $candidate['candidateId']; ?>">Show Feedbacks</a>
                </td>
            </tr>
            <?php endforeach; ?>    
            </tbody>
                
        </table>
    </div>
</div>
    <?php TemplateUtility::printFooter(); ?>        
