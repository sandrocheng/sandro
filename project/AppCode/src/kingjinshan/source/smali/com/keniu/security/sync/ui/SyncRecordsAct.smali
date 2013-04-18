.class public Lcom/keniu/security/sync/ui/SyncRecordsAct;
.super Lcom/keniu/security/sync/ui/HelperBaseTitleAct;
.source "SyncRecordsAct.java"


# instance fields
.field a:Landroid/os/Handler;

.field private b:Ljava/util/List;

.field private c:Landroid/widget/ListView;

.field private d:Ljava/lang/String;

.field private e:Lcom/keniu/security/sync/k;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Lcom/keniu/security/sync/ui/ai;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;-><init>()V

    .line 35
    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->e:Lcom/keniu/security/sync/k;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->h:Z

    .line 82
    new-instance v0, Lcom/keniu/security/sync/ui/ah;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/ah;-><init>(Lcom/keniu/security/sync/ui/SyncRecordsAct;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->a:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncRecordsAct;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->g:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncRecordsAct;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Lcom/keniu/security/sync/k;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->e:Lcom/keniu/security/sync/k;

    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/sync/ui/SyncRecordsAct;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->g:I

    return v0
.end method

.method static synthetic f(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->h:Z

    return v0
.end method

.method static synthetic g(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Lcom/keniu/security/sync/ui/ai;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->i:Lcom/keniu/security/sync/ui/ai;

    return-object v0
.end method

.method static synthetic h(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->c:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 178
    sparse-switch p1, :sswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 180
    :sswitch_0
    const v0, 0x7f0b08bf

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 183
    :sswitch_1
    const v0, 0x7f0b08c4

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 186
    :sswitch_2
    const v0, 0x7f0b08cc

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 189
    :sswitch_3
    const v0, 0x7f0b08cd

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x7b -> :sswitch_0
        0x2711 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->f:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    const v0, 0x7f0b0860

    const v1, 0x7f0b089d

    .line 198
    sparse-switch p1, :sswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 200
    :sswitch_0
    const v0, 0x7f0b08bd

    invoke-static {p0, v1, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 203
    :sswitch_1
    invoke-static {p0, v1, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 206
    :sswitch_2
    invoke-static {p0, v1, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 209
    :sswitch_3
    const v0, 0x7f0b089c

    invoke-static {p0, v1, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 198
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xb -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 218
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 219
    const v1, 0x7f0b089e

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 220
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 221
    const v1, 0x7f0b03ca

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 222
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 225
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    const v0, 0x7f03008d

    const v1, 0x7f0b0880

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->a(Landroid/os/Bundle;II)V

    .line 42
    const v0, 0x7f080248

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->c:Landroid/widget/ListView;

    .line 43
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/sync/ui/ae;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/ae;-><init>(Lcom/keniu/security/sync/ui/SyncRecordsAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->e:Lcom/keniu/security/sync/k;

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/keniu/security/sync/ui/ai;

    invoke-direct {v0, p0, p0}, Lcom/keniu/security/sync/ui/ai;-><init>(Lcom/keniu/security/sync/ui/SyncRecordsAct;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->i:Lcom/keniu/security/sync/ui/ai;

    .line 52
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b08ce

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f07002c

    new-instance v2, Lcom/keniu/security/sync/ui/af;

    invoke-direct {v2, p0}, Lcom/keniu/security/sync/ui/af;-><init>(Lcom/keniu/security/sync/ui/SyncRecordsAct;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sync_records"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->b:Ljava/util/List;

    .line 106
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sync_itemdir"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->d:Ljava/lang/String;

    .line 107
    const-string v0, "contact"

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b08c9

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 108
    :goto_0
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->i:Lcom/keniu/security/sync/ui/ai;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    invoke-super {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->onStart()V

    .line 111
    return-void

    .line 107
    :cond_0
    const v0, 0x7f0b08ca

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    iget-boolean v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRecordsAct;->d:Ljava/lang/String;

    const-string v1, "contact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/keniu/security/sync/y;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/keniu/security/sync/y;->c(I)Z

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->onStop()V

    .line 117
    return-void

    :cond_1
    move v0, v2

    .line 115
    goto :goto_0
.end method
