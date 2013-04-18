.class final Lcom/ijinshan/kinghelper/common/t;
.super Landroid/content/AsyncQueryHandler;
.source "PickListActivity.java"


# instance fields
.field protected final a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/ijinshan/kinghelper/common/PickListActivity;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    .line 1510
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1511
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/t;->a:Ljava/lang/ref/WeakReference;

    .line 1513
    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 1517
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/t;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/common/PickListActivity;

    .line 1518
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1520
    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 1522
    invoke-virtual {v0, p3}, Lcom/ijinshan/kinghelper/common/PickListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 1523
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->l(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1524
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->m(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1528
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1529
    if-eqz p3, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1531
    :cond_0
    const-string v0, "vnd.android.cursor.dir/contact"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->n(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1533
    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1535
    :cond_1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_7

    const-string v0, "data1"

    .line 1537
    :goto_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const-string v1, "display_name"

    .line 1539
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1541
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1543
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 1549
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1551
    new-instance v2, Lcom/ijinshan/kinghelper/common/b;

    invoke-direct {v2}, Lcom/ijinshan/kinghelper/common/b;-><init>()V

    .line 1552
    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-virtual {v2, v0}, Lcom/ijinshan/kinghelper/common/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1554
    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->i(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1555
    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->i(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    :cond_3
    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->o(Lcom/ijinshan/kinghelper/common/PickListActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput-object v0, v2, v1

    .line 1558
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1562
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    new-instance v1, Lcom/ijinshan/kinghelper/common/r;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-virtual {v3}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v4}, Lcom/ijinshan/kinghelper/common/PickListActivity;->n(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p3}, Lcom/ijinshan/kinghelper/common/r;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;Lcom/ijinshan/kinghelper/common/r;)Lcom/ijinshan/kinghelper/common/r;

    .line 1564
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;)Lcom/ijinshan/kinghelper/common/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1570
    :cond_5
    :goto_2
    return-void

    .line 1526
    :cond_6
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/t;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a()V

    goto/16 :goto_0

    .line 1535
    :cond_7
    const-string v0, "number"

    goto/16 :goto_1

    .line 1566
    :cond_8
    if-eqz p3, :cond_5

    .line 1567
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method
