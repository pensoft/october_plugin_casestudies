<?php namespace Pensoft\Casestudies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatePensoftCasestudiesData2 extends Migration
{
    public function up()
    {
        Schema::table('pensoft_casestudies_data', function($table)
        {
            $table->string('slug')->default('title');
        });
    }
    
    public function down()
    {
        Schema::table('pensoft_casestudies_data', function($table)
        {
            $table->dropColumn('slug');
        });
    }
}
