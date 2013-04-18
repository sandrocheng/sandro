.class public Lcom/keniu/security/sync/ui/SyncBackupActivity;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "SyncBackupActivity.java"


# instance fields
.field public a:[I

.field private b:Landroid/widget/Button;

.field private c:Ljava/util/List;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/keniu/security/sync/ui/w;

.field private f:[Z

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Lcom/keniu/security/sync/k;

.field private k:I

.field private final l:Landroid/widget/AdapterView$OnItemClickListener;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    .line 59
    iput v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    .line 60
    iput v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->i:Ljava/lang/String;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    .line 63
    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    .line 78
    iput v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->k:I

    .line 121
    new-instance v0, Lcom/keniu/security/sync/ui/r;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/r;-><init>(Lcom/keniu/security/sync/ui/SyncBackupActivity;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->l:Landroid/widget/AdapterView$OnItemClickListener;

    .line 130
    new-instance v0, Lcom/keniu/security/sync/ui/s;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/s;-><init>(Lcom/keniu/security/sync/ui/SyncBackupActivity;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->m:Landroid/view/View$OnClickListener;

    .line 203
    new-instance v0, Lcom/keniu/security/sync/ui/v;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/v;-><init>(Lcom/keniu/security/sync/ui/SyncBackupActivity;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->n:Landroid/os/Handler;

    .line 371
    return-void

    .line 58
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 62
    :array_1
    .array-data 0x4
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncBackupActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncBackupActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncBackupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/os/Handler;)V
    .locals 2
    .parameter

    .prologue
    .line 392
    new-instance v0, Lcom/keniu/security/sync/c/i;

    iget v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->k:I

    invoke-direct {v0, p1, p0, v1}, Lcom/keniu/security/sync/c/i;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 393
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncBackupActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic b(Lcom/keniu/security/sync/ui/SyncBackupActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    return p1
.end method

.method private b(Landroid/os/Handler;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 396
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->k:I

    if-nez v0, :cond_1

    .line 397
    new-instance v0, Lcom/keniu/security/sync/c/m;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    invoke-direct {v0, p1, v1, p0}, Lcom/keniu/security/sync/c/m;-><init>(Landroid/os/Handler;[ZLandroid/content/Context;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->i:Ljava/lang/String;

    :goto_0
    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 406
    :goto_1
    return-void

    .line 397
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "login#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    const-string v4, "user_name"

    invoke-virtual {v3, v4}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    const-string v4, "pass_word"

    invoke-virtual {v3, v4}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_2

    .line 401
    new-instance v0, Lcom/keniu/security/sync/c/k;

    invoke-direct {v0, p1, p0}, Lcom/keniu/security/sync/c/k;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/keniu/security/sync/ui/SyncBackupActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic b(Lcom/keniu/security/sync/ui/SyncBackupActivity;)[Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/sync/ui/SyncBackupActivity;)Lcom/keniu/security/sync/k;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0xa

    .line 149
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    const-string v1, "no_more_backup_tip"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    const-string v1, "sync_backup_time_key"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    if-ge v0, v2, :cond_2

    .line 150
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030088

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 151
    const v0, 0x7f08024f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 152
    new-instance v2, Lcom/keniu/security/sync/ui/t;

    invoke-direct {v2, p0}, Lcom/keniu/security/sync/ui/t;-><init>(Lcom/keniu/security/sync/ui/SyncBackupActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    const-string v2, "no_more_backup_tip"

    invoke-virtual {v0, v2}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    const-string v2, "no_more_backup_tip"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 162
    :cond_1
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b0219

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b0218

    new-instance v2, Lcom/keniu/security/sync/ui/u;

    invoke-direct {v2, p0}, Lcom/keniu/security/sync/ui/u;-><init>(Lcom/keniu/security/sync/ui/SyncBackupActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b021a

    invoke-virtual {v0, v1, v4}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_2
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->d()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/keniu/security/sync/ui/SyncBackupActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->k:I

    return v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    invoke-static {v0}, Lcom/keniu/security/sync/r;->b([Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->k:I

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/keniu/security/sync/r;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    :cond_1
    :goto_1
    return-void

    .line 179
    :pswitch_0
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    if-nez v0, :cond_0

    const v0, 0x7f0b08aa

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    if-nez v0, :cond_0

    const v0, 0x7f0b08ab

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    if-nez v0, :cond_0

    const v0, 0x7f0b08ac

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 181
    :cond_2
    const-string v0, "synco"

    const-string v1, "9"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    if-lez v0, :cond_3

    new-instance v0, Lcom/keniu/security/sync/c/a;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->n:Landroid/os/Handler;

    iget v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->k:I

    invoke-direct {v0, v1, p0, v2}, Lcom/keniu/security/sync/c/a;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->n:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a(Landroid/os/Handler;)V

    goto :goto_1

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->n:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b(Landroid/os/Handler;)V

    goto :goto_1

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private e()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    invoke-static {v0}, Lcom/keniu/security/sync/r;->b([Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 190
    :pswitch_0
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    if-nez v0, :cond_0

    const v0, 0x7f0b08aa

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 193
    :pswitch_1
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    if-nez v0, :cond_0

    const v0, 0x7f0b08ab

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 196
    :pswitch_2
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    if-nez v0, :cond_0

    const v0, 0x7f0b08ac

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic e(Lcom/keniu/security/sync/ui/SyncBackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c()V

    return-void
.end method

.method private f()V
    .locals 9

    .prologue
    const v8, 0x7f0b088d

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 249
    invoke-static {p0}, Lcom/keniu/security/sync/r;->a(Landroid/content/Context;)Lcom/keniu/security/sync/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d;->b()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    .line 250
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/t;->a:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    :goto_1
    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v2}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 254
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b088b

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {p0, v8}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 257
    const-string v2, "VMAP_ITEM_DESC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b088c

    invoke-virtual {p0, v4}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020115

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b088e

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {p0, v8}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 264
    const-string v2, "VMAP_ITEM_DESC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b088f

    invoke-virtual {p0, v4}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 268
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020114

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b0890

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b0891

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-void

    :cond_0
    move v0, v6

    goto/16 :goto_1

    :cond_1
    move v0, v6

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/keniu/security/sync/ui/SyncBackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->d()V

    return-void
.end method

.method private g()I
    .locals 2

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    invoke-static {p0}, Lcom/keniu/security/sync/r;->a(Landroid/content/Context;)Lcom/keniu/security/sync/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d;->b()Landroid/database/Cursor;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_0

    .line 282
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 283
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_0
    return v0
.end method

.method static synthetic g(Lcom/keniu/security/sync/ui/SyncBackupActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    return v0
.end method

.method private h()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/t;->a:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 291
    const/4 v1, 0x0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 294
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v1

    .line 298
    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v2}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v1

    .line 299
    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lcom/keniu/security/sync/ui/SyncBackupActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->n:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v7, -0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 303
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 304
    const v1, 0x7f0b0896

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 306
    iget v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->k:I

    if-ne v1, v6, :cond_0

    .line 307
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v5

    if-lez v2, :cond_a

    move v2, v5

    :goto_0
    aput v2, v1, v5

    .line 308
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v6

    if-lez v2, :cond_b

    move v2, v5

    :goto_1
    aput v2, v1, v6

    .line 311
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 312
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v5

    if-eq v2, v7, :cond_1

    .line 313
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v5

    if-nez v2, :cond_c

    .line 314
    const v2, 0x7f0b08ad

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    invoke-static {v5}, Lcom/keniu/security/sync/y;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v5}, Lcom/keniu/security/sync/y;->c(I)Z

    .line 320
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v6

    if-eq v2, v7, :cond_2

    .line 321
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v5

    if-eq v2, v7, :cond_d

    const-string v2, "<br>"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v6

    if-nez v2, :cond_e

    .line 323
    const v2, 0x7f0b08ae

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-static {v6}, Lcom/keniu/security/sync/y;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6}, Lcom/keniu/security/sync/y;->c(I)Z

    .line 329
    :cond_2
    :goto_4
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v8

    if-eq v2, v7, :cond_5

    .line 330
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v6

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v5

    if-eq v2, v7, :cond_f

    :cond_3
    const-string v2, "<br>"

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v8

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v9

    if-nez v2, :cond_10

    .line 332
    :cond_4
    const v2, 0x7f0b08af

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    :cond_5
    :goto_6
    iget v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->k:I

    if-ne v2, v6, :cond_7

    .line 339
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v8

    if-ne v2, v7, :cond_6

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v6

    if-ne v2, v7, :cond_6

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v5

    if-eq v2, v7, :cond_11

    :cond_6
    const-string v2, "<br>"

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    const v2, 0x7f0b08d4

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 343
    const v1, 0x7f0b03ca

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 344
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_8

    .line 345
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 347
    :cond_8
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->k:I

    if-ne v0, v6, :cond_9

    .line 348
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    const-string v1, "local_last_record"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_9
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aput v7, v3, v9

    aput v7, v2, v8

    aput v7, v1, v6

    aput v7, v0, v5

    .line 351
    const-string v0, "synco"

    const-string v1, "3"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void

    .line 307
    :cond_a
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v5

    goto/16 :goto_0

    .line 308
    :cond_b
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v6

    goto/16 :goto_1

    .line 317
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color=\'red\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b08b2

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 321
    :cond_d
    const-string v2, ""

    goto/16 :goto_3

    .line 326
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color=\'red\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b08b3

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 330
    :cond_f
    const-string v2, ""

    goto/16 :goto_5

    .line 334
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color=\'red\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b08b4

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 339
    :cond_11
    const-string v2, ""

    goto/16 :goto_7
.end method

.method public final b()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 355
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    .line 356
    iget v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    .line 357
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    aget-boolean v2, v2, v7

    if-nez v2, :cond_0

    move v0, v7

    .line 358
    :cond_0
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    aget-boolean v2, v2, v8

    if-nez v2, :cond_1

    move v1, v7

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    const v3, 0x7f0b087c

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/keniu/security/sync/r;->aO:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    if-eqz v0, :cond_2

    .line 361
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    const v3, 0x7f0b087a

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;I)V

    .line 363
    :cond_2
    if-eqz v1, :cond_3

    .line 364
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    const v3, 0x7f0b087b

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;I)V

    .line 366
    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v7

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a:[I

    aget v2, v2, v8

    if-nez v2, :cond_5

    .line 367
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b08a1

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lcom/keniu/security/sync/r;->aO:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b08a2

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/r;->a(Ljava/lang/String;)V

    .line 369
    :cond_5
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c()V

    .line 146
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    const v0, 0x7f030086

    const v1, 0x7f0b087e

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 69
    const v0, 0x7f080247

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b:Landroid/widget/Button;

    const v1, 0x7f0b0877

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 71
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v0, 0x7f080248

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->d:Landroid/widget/ListView;

    .line 73
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->l:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/keniu/security/sync/ui/q;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/q;-><init>(Lcom/keniu/security/sync/ui/SyncBackupActivity;)V

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/q;->start()V

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onDestroy()V

    .line 119
    return-void
.end method

.method public onStart()V
    .locals 10

    .prologue
    const v9, 0x7f0b088d

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onStart()V

    .line 83
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "backup_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "backup_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->k:I

    .line 86
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->k:I

    if-ne v0, v7, :cond_1

    .line 87
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b08dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b:Landroid/widget/Button;

    const v1, 0x7f0b08de

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    const-string v1, "sync_items_bak_status"

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    array-length v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;I)[Z

    move-result-object v0

    .line 92
    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    .line 94
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c:Ljava/util/List;

    .line 95
    invoke-static {p0}, Lcom/keniu/security/sync/r;->a(Landroid/content/Context;)Lcom/keniu/security/sync/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d;->b()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/t;->a:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    :goto_1
    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v2}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b088b

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VMAP_ITEM_DESC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b088c

    invoke-virtual {p0, v4}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c:Ljava/util/List;

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

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VMAP_ITEM_DESC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b088f

    invoke-virtual {p0, v4}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c:Ljava/util/List;

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

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b0891

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcom/keniu/security/sync/ui/w;

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c:Ljava/util/List;

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "VMAP_ITEM_IMAGE"

    aput-object v1, v4, v6

    const-string v1, "VMAP_ITEM_TITLE"

    aput-object v1, v4, v7

    const/4 v1, 0x2

    const-string v2, "VMAP_ITEM_DESC"

    aput-object v2, v4, v1

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/keniu/security/sync/ui/w;-><init>(Lcom/keniu/security/sync/ui/SyncBackupActivity;Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->e:Lcom/keniu/security/sync/ui/w;

    .line 98
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->e:Lcom/keniu/security/sync/ui/w;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    return-void

    :cond_3
    move v0, v6

    goto/16 :goto_1

    :cond_4
    move v0, v6

    goto/16 :goto_0

    .line 96
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
    .line 104
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->j:Lcom/keniu/security/sync/k;

    const-string v1, "sync_items_bak_status"

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncBackupActivity;->f:[Z

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;[Z)V

    .line 105
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onStop()V

    .line 106
    return-void
.end method
