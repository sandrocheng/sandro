.class final Lhu;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private synthetic a:Lhs;


# direct methods
.method constructor <init>(Lhs;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lhu;->a:Lhs;

    const/4 v0, 0x0

    const/16 v1, 0x33

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lhu;->a:Lhs;

    invoke-static {p1}, Lhs;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lhu;->a:Lhs;

    invoke-static {v0, p1, p2, p3}, Lhs;->a(Lhs;Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
