.class public Lcom/keniu/security/sync/ui/SyncLocalAct;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "SyncLocalAct.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Ljava/util/List;

.field private c:Landroid/widget/SimpleAdapter;

.field private d:I

.field private e:Lcom/keniu/security/sync/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    .line 26
    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->e:Lcom/keniu/security/sync/k;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncLocalAct;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->d:I

    return v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncLocalAct;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->d:I

    return p1
.end method

.method private a()V
    .locals 8

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020111

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b08d7

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncLocalAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b08d8

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncLocalAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020112

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b08d9

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncLocalAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->e:Lcom/keniu/security/sync/k;

    const-string v2, "local_last_record"

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b08db

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->e:Lcom/keniu/security/sync/k;

    const-string v7, "local_last_record"

    invoke-virtual {v6, v7}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/keniu/security/sync/ui/SyncLocalAct;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-void

    .line 69
    :cond_0
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b08da

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncLocalAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    const v0, 0x7f03008f

    const v1, 0x7f0b08d5

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 31
    const v0, 0x7f080248

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncLocalAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->a:Landroid/widget/ListView;

    .line 32
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/sync/ui/ab;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/ab;-><init>(Lcom/keniu/security/sync/ui/SyncLocalAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->e:Lcom/keniu/security/sync/k;

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method protected onStart()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 46
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onStart()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->b:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020111

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b08d7

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncLocalAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b08d8

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncLocalAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020112

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b08d9

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncLocalAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->e:Lcom/keniu/security/sync/k;

    const-string v2, "local_last_record"

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b08db

    new-array v3, v8, [Ljava/lang/Object;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->e:Lcom/keniu/security/sync/k;

    const-string v6, "local_last_record"

    invoke-virtual {v5, v6}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/keniu/security/sync/ui/SyncLocalAct;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->b:Ljava/util/List;

    const v3, 0x7f030090

    new-array v4, v9, [Ljava/lang/String;

    const-string v1, "VMAP_ITEM_IMAGE"

    aput-object v1, v4, v7

    const-string v1, "VMAP_ITEM_TITLE"

    aput-object v1, v4, v8

    const/4 v1, 0x2

    const-string v5, "VMAP_ITEM_DESC"

    aput-object v5, v4, v1

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->c:Landroid/widget/SimpleAdapter;

    .line 53
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncLocalAct;->c:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    return-void

    .line 48
    :cond_0
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b08da

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncLocalAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :array_0
    .array-data 0x4
        0x31t 0x1t 0x8t 0x7ft
        0x86t 0x0t 0x8t 0x7ft
        0x4dt 0x2t 0x8t 0x7ft
    .end array-data
.end method
