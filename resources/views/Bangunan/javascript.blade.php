<script>
    $(document).ready(function() {
        $('#bangunan').addClass('active');
        $('#myTable').DataTable({
            lengthMenu: [
                [10, 25, 50, 100, -1], // Jumlah entri per halaman
                ['10', '25', '50', '100', 'All'] // Label yang akan ditampilkan di dropdown
            ],
            // ... (opsional: konfigurasi lainnya)
        });
    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.13/jspdf.plugin.autotable.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.0/xlsx.full.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.5/xlsx.full.min.js"></script>
<script src="https://cdn.rawgit.com/rainabba/jquery-table2excel/1.1.0/dist/jquery.table2excel.min.js"></script>