<?php namespace Pensoft\Casestudies\Updates;

use Illuminate\Database\Schema\Blueprint;
use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatePensoftCasestudiesData extends Migration
{
    public function up(): void
    {
        Schema::table('pensoft_casestudies_data', function(Blueprint $table)
        {
            $table->renameColumn('sort_ord', 'sort_order');
        });
    }

    public function down(): void
    {
        Schema::table('pensoft_casestudies_data', function(Blueprint $table)
        {
            $table->renameColumn('sort_order', 'sort_ord');
        });
    }
}
