<?php namespace Pensoft\Casestudies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatePensoftCasestudiesData3 extends Migration
{
    public function up()
    {
        Schema::table('pensoft_casestudies_data', function($table)
        {
            $table->text('quick_facts')->nullable();
            $table->text('problem')->nullable();
            $table->text('efforts')->nullable();
        });
    }

    public function down()
    {
        Schema::table('pensoft_casestudies_data', function($table)
        {
            $table->dropColumn('quick_facts');
            $table->dropColumn('problem');
            $table->dropColumn('efforts');
        });
    }
}
