.class public Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;
.super Landroid/app/ExpandableListActivity;
.source "FirewallCommonServiceQueryActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# instance fields
.field private i:Landroid/database/sqlite/SQLiteDatabase;

.field private j:Landroid/database/Cursor;

.field private k:Ljava/util/List;

.field private l:Lcom/ijinshan/kinghelper/firewall/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "commonnum.db"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->a:Ljava/lang/String;

    .line 29
    const-string v0, "classlist"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->b:Ljava/lang/String;

    .line 30
    const-string v0, "name"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->c:Ljava/lang/String;

    .line 31
    const-string v0, "idx"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->d:Ljava/lang/String;

    .line 32
    const-string v0, "table"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->e:Ljava/lang/String;

    .line 33
    const-string v0, "_id"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->f:Ljava/lang/String;

    .line 34
    const-string v0, "number"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->g:Ljava/lang/String;

    .line 35
    const-string v0, "create table if not exists classlist( name VARCHAR(500),idx INTEGER )"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->j:Landroid/database/Cursor;

    .line 40
    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->l:Lcom/ijinshan/kinghelper/firewall/s;

    .line 84
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 65
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->i:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->i:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->b:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->j:Landroid/database/Cursor;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->k:Ljava/util/List;

    .line 71
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->j:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->j:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->j:Landroid/database/Cursor;

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->d:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->i:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v7, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->f:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->j:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->k:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 183
    invoke-interface {v0, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 185
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {p0, v0}, Lcom/keniu/security/util/af;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->requestWindowFeature(I)Z

    .line 45
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    if-nez p1, :cond_0

    .line 50
    const-string v0, "telman_cmnquery"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->i:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->i:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->d()V

    .line 55
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/s;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->j:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->k:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ijinshan/kinghelper/firewall/s;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;Landroid/database/Cursor;Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->l:Lcom/ijinshan/kinghelper/firewall/s;

    .line 56
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->l:Lcom/ijinshan/kinghelper/firewall/s;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 57
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelector(I)V

    .line 59
    return-void
.end method
