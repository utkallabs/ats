<?php TemplateUtility::printHeader('Candidate List for interview', array( 'js/highlightrows.js', 'js/export.js', 'js/dataGrid.js', 'js/dataGridFilters.js',  'js/candidate.js', 'https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css', 'https://code.jquery.com/jquery-3.7.0.slim.js', 'https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js', 'https://cdn.datatables.net/1.13.4/js/dataTables.jqueryui.min.js')); ?>
<?php TemplateUtility::printHeaderBlock(); ?>
<?php TemplateUtility::printTabs($this->active); ?>
<div id="main">
    <?php TemplateUtility::printQuickSearch(); ?>
    <div id="contents">
        <table width="100%">
            <tr>
                <td width="3%">
                    <img src="images/candidate.gif" width="24" height="24" alt="Candidates"
                        style="border: none; margin-top: 3px;" />&nbsp;
                </td>
                <td>
                    <h2>Candidate List for interview</h2>
                </td>
            </tr>
        </table>
        <table class="longForm">
            <thead>
                <tr>
                    <th width="5%">Sl No</th>
                    <th>Candidate Name</th>
                    <th>Interview Level</th>
                    <th>Date</th>
                    <th>Time</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($this->candidates as $key => $candidate): ?>
                    <tr>
                        <td width="5%"><?php echo ++$key; ?></td>
                        <td><a href="<?php echo(CATSUtility::getIndexName()); ?>?m=candidates&amp;a=show&amp;candidateID=<?php echo $candidate['candidateId']; ?>"><?php echo $candidate['candidateFullName']; ?></a></td>
                        <td><?php echo  $candidate['interview_level']; ?></td>
                        <td><?php echo  explode(" ",$candidate['date'])[0]; ?></td>
                        <td><?php echo date("g:i a", strtotime(explode(" ",$candidate['date'])[1])); ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
<?php TemplateUtility::printFooter(); ?>