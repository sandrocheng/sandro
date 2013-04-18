.class public Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "SyncRestoreHistoryAct.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Ljava/util/List;

.field private c:Landroid/widget/SimpleAdapter;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/keniu/security/sync/k;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->e:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->f:Lcom/keniu/security/sync/k;

    .line 74
    const-string v0, "contact"

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->g:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/keniu/security/sync/ui/aq;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/aq;-><init>(Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->d:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;)Lcom/keniu/security/sync/k;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->f:Lcom/keniu/security/sync/k;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->e:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 4

    .prologue
    const v3, 0x7f0b08cf

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b088b

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "VMAP_ITEM_DESC"

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020115

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b08d0

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "VMAP_ITEM_DESC"

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 76
    invoke-static {p0}, Lcom/keniu/security/sync/r;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 77
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->d:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_1
    new-instance v0, Lcom/keniu/security/sync/c/e;

    const v1, 0x7f0b08c7

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->h:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/keniu/security/sync/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->e:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->e:Ljava/lang/String;

    :goto_2
    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 79
    :pswitch_0
    const-string v0, "contact"

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->g:Ljava/lang/String;

    goto :goto_1

    .line 82
    :pswitch_1
    const-string v0, "sms"

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->g:Ljava/lang/String;

    goto :goto_1

    .line 85
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "login#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->f:Lcom/keniu/security/sync/k;

    const-string v5, "user_name"

    invoke-virtual {v4, v5}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->f:Lcom/keniu/security/sync/k;

    const-string v5, "pass_word"

    invoke-virtual {v4, v5}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 3
    .parameter

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    const-string v1, "sync_records"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 128
    const-string v1, "sync_itemdir"

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->a()V

    .line 70
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    const v0, 0x7f03008f

    const v1, 0x7f0b08c5

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 39
    const v0, 0x7f080248

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->a:Landroid/widget/ListView;

    .line 40
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/sync/ui/ap;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/ap;-><init>(Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->f:Lcom/keniu/security/sync/k;

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const v3, 0x7f0b08cf

    const/4 v6, 0x3

    .line 56
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onStart()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->b:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b088b

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_DESC"

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020115

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b08d0

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_DESC"

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->b:Ljava/util/List;

    const v3, 0x7f030090

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "VMAP_ITEM_IMAGE"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "VMAP_ITEM_TITLE"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "VMAP_ITEM_DESC"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->c:Landroid/widget/SimpleAdapter;

    .line 63
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;->c:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    return-void

    .line 59
    nop

    :array_0
    .array-data 0x4
        0x31t 0x1t 0x8t 0x7ft
        0x86t 0x0t 0x8t 0x7ft
        0x4dt 0x2t 0x8t 0x7ft
    .end array-data
.end method
