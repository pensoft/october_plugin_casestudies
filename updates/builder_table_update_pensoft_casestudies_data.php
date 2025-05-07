<?php namespace Pensoft\Casestudies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatePensoftCasestudiesData extends Migration
{
    public function up()
    {
        Schema::table('pensoft_casestudies_data', function($table)
        {
            $table->renameColumn('sort_ord', 'sort_order');
        });
    }
    
    public function down()
    {
        Schema::table('pensoft_casestudies_data', function($table)
        {
            $table->renameColumn('sort_order', 'sort_ord');
        });
    }
}
