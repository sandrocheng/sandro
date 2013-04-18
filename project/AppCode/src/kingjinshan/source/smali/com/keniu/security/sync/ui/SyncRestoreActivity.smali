.class public Lcom/keniu/security/sync/ui/SyncRestoreActivity;
.super Lcom/keniu/security/sync/ui/HelperBaseTitleAct;
.source "SyncRestoreActivity.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Ljava/util/List;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/keniu/security/sync/ui/an;

.field private e:[Z

.field private f:Ljava/lang/String;

.field private g:Lcom/keniu/security/sync/k;

.field private h:I

.field private final i:Landroid/widget/AdapterView$OnItemClickListener;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;-><init>()V

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->f:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->g:Lcom/keniu/security/sync/k;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->h:I

    .line 109
    new-instance v0, Lcom/keniu/security/sync/ui/al;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/al;-><init>(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->i:Landroid/widget/AdapterView$OnItemClickListener;

    .line 124
    new-instance v0, Lcom/keniu/security/sync/ui/am;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/am;-><init>(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->j:Landroid/view/View$OnClickListener;

    .line 40
    return-void

    .line 45
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b088b

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b088c

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020115

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b088e

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b088f

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020114

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b0890

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b0891

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/16 v5, -0xb

    const/4 v4, 0x0

    .line 181
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->h:I

    if-nez v0, :cond_2

    .line 182
    invoke-static {p0}, Lcom/keniu/security/sync/r;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v0, "synco"

    const-string v1, "10"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->f:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->f:Ljava/lang/String;

    .line 185
    new-instance v0, Lcom/keniu/security/sync/c/d;

    new-instance v1, Lcom/keniu/security/sync/j;

    invoke-direct {v1, p0, v4}, Lcom/keniu/security/sync/j;-><init>(Lcom/keniu/security/sync/ui/HelperBaseTitleAct;B)V

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    invoke-direct {v0, v1, v2, p0}, Lcom/keniu/security/sync/c/d;-><init>(Landroid/os/Handler;[ZLandroid/content/Context;)V

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->f:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->g:Lcom/keniu/security/sync/k;

    const-string v2, "user_name"

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->g:Lcom/keniu/security/sync/k;

    const-string v2, "pass_word"

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 187
    :cond_2
    new-instance v0, Lcom/keniu/security/sync/j;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/j;-><init>(Lcom/keniu/security/sync/ui/HelperBaseTitleAct;)V

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_3

    move v2, v4

    :goto_2
    aput v2, v1, v4

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_4

    move v2, v4

    :goto_3
    aput v2, v1, v3

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_5

    move v2, v4

    :goto_4
    aput v2, v1, v6

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_6

    move v3, v4

    :goto_5
    aput v3, v1, v2

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    move v2, v5

    goto :goto_2

    :cond_4
    move v2, v5

    goto :goto_3

    :cond_5
    move v2, v5

    goto :goto_4

    :cond_6
    move v3, v5

    goto :goto_5
.end method

.method static synthetic b(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)[Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)Lcom/keniu/security/sync/k;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->g:Lcom/keniu/security/sync/k;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x2

    const/16 v5, -0xb

    const/4 v4, 0x0

    .line 192
    new-instance v0, Lcom/keniu/security/sync/j;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/j;-><init>(Lcom/keniu/security/sync/ui/HelperBaseTitleAct;)V

    .line 193
    const/4 v1, 0x4

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    aput v2, v1, v4

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    aput v2, v1, v3

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    aput v2, v1, v6

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_3

    move v3, v4

    :goto_3
    aput v3, v1, v2

    .line 194
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    return-void

    :cond_0
    move v2, v5

    .line 193
    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_3
.end method

.method static synthetic d(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->h:I

    return v0
.end method

.method static synthetic e(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->b()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 205
    sparse-switch p1, :sswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 207
    :sswitch_0
    const-string v0, "synco"

    const-string v1, "12"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const v0, 0x7f0b08bf

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 211
    :sswitch_1
    const v0, 0x7f0b08c4

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_0
        0x2711 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->f:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    const v0, 0x7f0b0860

    const v1, 0x7f0b089d

    .line 220
    sparse-switch p1, :sswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 222
    :sswitch_0
    const v0, 0x7f0b08bd

    invoke-static {p0, v1, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 225
    :sswitch_1
    invoke-static {p0, v1, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 228
    :sswitch_2
    invoke-static {p0, v1, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 231
    :sswitch_3
    const v0, 0x7f0b089c

    invoke-static {p0, v1, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 220
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
    .line 249
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 250
    const v1, 0x7f0b089e

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 251
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 252
    const v1, 0x7f0b03ca

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 253
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 256
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->b()V

    .line 122
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    const v0, 0x7f030086

    const v1, 0x7f0b0880

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->a(Landroid/os/Bundle;II)V

    .line 55
    const v0, 0x7f080247

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->a:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->a:Landroid/widget/Button;

    const v1, 0x7f0b0878

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f080248

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->c:Landroid/widget/ListView;

    .line 59
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->i:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->g:Lcom/keniu/security/sync/k;

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/keniu/security/sync/ui/ak;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/ak;-><init>(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)V

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/ak;->start()V

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->onDestroy()V

    .line 107
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 68
    invoke-super {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->onStart()V

    .line 69
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "backup_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "backup_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->h:I

    .line 72
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->h:I

    if-ne v0, v5, :cond_1

    .line 73
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b08dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->a:Landroid/widget/Button;

    const v1, 0x7f0b08df

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->g:Lcom/keniu/security/sync/k;

    const-string v1, "sync_items_res_status"

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;I)[Z

    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    .line 78
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->b:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b088b

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b088c

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020115

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b088e

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b088f

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020114

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b0890

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b0891

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lcom/keniu/security/sync/ui/an;

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->b:Ljava/util/List;

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "VMAP_ITEM_IMAGE"

    aput-object v2, v4, v1

    const-string v1, "VMAP_ITEM_TITLE"

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const-string v2, "VMAP_ITEM_DESC"

    aput-object v2, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/keniu/security/sync/ui/an;-><init>(Lcom/keniu/security/sync/ui/SyncRestoreActivity;Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->d:Lcom/keniu/security/sync/ui/an;

    .line 84
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->d:Lcom/keniu/security/sync/ui/an;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    return-void

    .line 80
    :array_0
    .array-data 0x4
        0x31t 0x1t 0x8t 0x7ft
        0x86t 0x0t 0x8t 0x7ft
        0x4dt 0x2t 0x8t 0x7ft
    .end array-data
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->g:Lcom/keniu/security/sync/k;

    const-string v1, "sync_items_res_status"

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e:[Z

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;[Z)V

    .line 91
    invoke-super {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->onStop()V

    .line 92
    return-void
.end method
