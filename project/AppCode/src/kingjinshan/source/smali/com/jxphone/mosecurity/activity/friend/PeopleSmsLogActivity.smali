.class public final Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;
.super Lcom/jxphone/mosecurity/activity/TabContactActivity;
.source "PeopleSmsLogActivity.java"


# static fields
.field private static final m:I

.field private static n:[Lcom/jxphone/mosecurity/c/l;

.field private static o:Lcom/jxphone/mosecurity/c/b;


# instance fields
.field l:Landroid/widget/EditText;

.field private p:Landroid/widget/ListView;

.field private q:Z

.field private r:Z

.field private s:Landroid/widget/ImageButton;

.field private t:I

.field private final u:Landroid/os/Handler;

.field private final v:Lcom/keniu/security/e/e;

.field private w:Lcom/jxphone/mosecurity/logic/a/j;

.field private x:Lcom/jxphone/mosecurity/c/l;

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/TabContactActivity;-><init>()V

    .line 67
    iput-boolean v2, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->q:Z

    .line 68
    iput-boolean v2, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->r:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->t:I

    .line 72
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/bi;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/bi;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->u:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/keniu/security/e/e;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->u:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/keniu/security/e/e;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->v:Lcom/keniu/security/e/e;

    .line 85
    iput-boolean v2, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->y:Z

    .line 491
    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->t:I

    return p1
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    .line 183
    if-nez p1, :cond_0

    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->n:[Lcom/jxphone/mosecurity/c/l;

    if-nez v0, :cond_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->w:Lcom/jxphone/mosecurity/logic/a/j;

    sget-object v1, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/jxphone/mosecurity/c/b;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    sput-object v0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->n:[Lcom/jxphone/mosecurity/c/l;

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p:Landroid/widget/ListView;

    new-instance v2, Lcom/jxphone/mosecurity/activity/a/c;

    sget-object v3, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    sget-object v4, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->n:[Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v2, p0, v3, v4}, Lcom/jxphone/mosecurity/activity/a/c;-><init>(Landroid/content/Context;Lcom/jxphone/mosecurity/c/b;[Lcom/jxphone/mosecurity/c/l;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p:Landroid/widget/ListView;

    sget-object v2, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->n:[Lcom/jxphone/mosecurity/c/l;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 189
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->m()V

    .line 190
    return-void
.end method

.method static synthetic b(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Lcom/jxphone/mosecurity/logic/a/j;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->w:Lcom/jxphone/mosecurity/logic/a/j;

    return-object v0
.end method

.method static synthetic c(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->y:Z

    return v0
.end method

.method static synthetic d(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "s"

    aput-object v2, v1, v4

    const-string v2, "0401000301"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "uuid"

    aput-object v2, v1, v4

    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "dt"

    aput-object v2, v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keniu/security/util/i;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "sms"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->a([[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->y:Z

    return v0
.end method

.method static synthetic f(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->s:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic g(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Lcom/jxphone/mosecurity/c/l;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->x:Lcom/jxphone/mosecurity/c/l;

    return-object v0
.end method

.method static synthetic h(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->t:I

    return v0
.end method

.method static synthetic i(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic o()[Lcom/jxphone/mosecurity/c/l;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->n:[Lcom/jxphone/mosecurity/c/l;

    return-object v0
.end method

.method static synthetic p()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method private q()V
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 141
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->i:Z

    invoke-static {p0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    .line 145
    sput-object v1, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    .line 147
    sput-object v1, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/c/b;->a(Ljava/lang/String;)V

    .line 148
    sget-object v1, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/b;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->i:Z

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->w:Lcom/jxphone/mosecurity/logic/a/j;

    .line 154
    const v0, 0x7f080308

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->s:Landroid/widget/ImageButton;

    .line 155
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->w:Lcom/jxphone/mosecurity/logic/a/j;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->v:Lcom/keniu/security/e/e;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/keniu/security/e/c;)V

    .line 157
    const v0, 0x7f080309

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p:Landroid/widget/ListView;

    .line 158
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 159
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/bj;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/bj;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 168
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->s:Landroid/widget/ImageButton;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/bk;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/bk;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->w:Lcom/jxphone/mosecurity/logic/a/j;

    sget-object v1, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->b(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->x:Lcom/jxphone/mosecurity/c/l;

    .line 224
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->x:Lcom/jxphone/mosecurity/c/l;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->s:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->x:Lcom/jxphone/mosecurity/c/l;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/bl;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/bl;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 337
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/bo;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/bo;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V

    .line 344
    const v1, 0x7f0b0676

    invoke-static {p0, v1, v0}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 473
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 476
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "s"

    aput-object v2, v1, v4

    const-string v2, "0401000301"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "uuid"

    aput-object v2, v1, v4

    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "dt"

    aput-object v2, v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keniu/security/util/i;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "sms"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 482
    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(B)V
    .locals 1
    .parameter

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->a(BZ)V

    .line 136
    return-void
.end method

.method public final a(Lcom/jxphone/mosecurity/c/l;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 355
    .line 358
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 365
    const v0, 0x7f0b0638

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->g()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    move-object v1, v0

    move-object v0, v5

    .line 385
    :goto_0
    new-instance v2, Lcom/keniu/security/util/aq;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 386
    const v3, 0x7f0b0634

    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\u7c7b\u578b\uff1a\u6587\u5b57\u77ed\u4fe1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\u65f6\u95f4\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keniu/security/util/i;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\u72b6\u6001\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 391
    const v0, 0x7f0b021d

    invoke-virtual {v2, v0, v5}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 393
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 394
    return-void

    .line 360
    :pswitch_0
    const v0, 0x7f0b0639

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    const v1, 0x7f0b063b

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 362
    goto :goto_0

    .line 368
    :pswitch_1
    const v1, 0x7f0b0696

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 369
    goto :goto_0

    .line 371
    :pswitch_2
    const v1, 0x7f0b063c

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 372
    goto :goto_0

    .line 374
    :pswitch_3
    const v1, 0x7f0b063d

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 375
    goto/16 :goto_0

    .line 377
    :pswitch_4
    const v1, 0x7f0b063e

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 378
    goto/16 :goto_0

    .line 380
    :pswitch_5
    const v1, 0x7f0b063f

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 366
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 249
    const/high16 v0, 0x7f0c

    return v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->r:Z

    .line 488
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->c()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->f()V

    .line 110
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->i:Z

    invoke-static {p0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v1

    invoke-interface {v1, v0, v3}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    sput-object v1, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    sput-object v1, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/c/b;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/b;->a(Lcom/jxphone/mosecurity/c/c;)V

    :cond_0
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->i:Z

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->w:Lcom/jxphone/mosecurity/logic/a/j;

    const v0, 0x7f080308

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->s:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->w:Lcom/jxphone/mosecurity/logic/a/j;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->v:Lcom/keniu/security/e/e;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/keniu/security/e/c;)V

    const v0, 0x7f080309

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/bj;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/bj;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 111
    invoke-direct {p0, v2}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->a(Z)V

    .line 112
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->s:Landroid/widget/ImageButton;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/bk;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/bk;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->w:Lcom/jxphone/mosecurity/logic/a/j;

    sget-object v1, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->b(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->x:Lcom/jxphone/mosecurity/c/l;

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->x:Lcom/jxphone/mosecurity/c/l;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->s:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->x:Lcom/jxphone/mosecurity/c/l;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/bl;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/bl;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    return-void

    :cond_1
    move v0, v2

    .line 112
    goto :goto_0
.end method

.method protected final j()I
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f0300cf

    return v0
.end method

.method protected final n()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f0b0659

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f080307

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->l:Landroid/widget/EditText;

    .line 92
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->l:Landroid/widget/EditText;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0b061e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    const-string v1, "need_check_pwd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->q:Z

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->q:Z

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->g()V

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->f()V

    goto :goto_0
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 267
    sparse-switch p1, :sswitch_data_0

    .line 330
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    .line 269
    :sswitch_0
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b050e

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f070019

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/bm;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/bm;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    .line 327
    :sswitch_1
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/bo;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/bo;-><init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V

    const v1, 0x7f0b0676

    invoke-static {p0, v1, v0}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x7f070019 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final onDestroy()V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onDestroy()V

    .line 173
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->x:Lcom/jxphone/mosecurity/c/l;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->w:Lcom/jxphone/mosecurity/logic/a/j;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->x:Lcom/jxphone/mosecurity/c/l;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->c(Lcom/jxphone/mosecurity/c/l;)Z

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->r:Z

    if-nez v0, :cond_1

    .line 176
    const/4 v0, 0x0

    sput-object v0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->n:[Lcom/jxphone/mosecurity/c/l;

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->w:Lcom/jxphone/mosecurity/logic/a/j;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->w:Lcom/jxphone/mosecurity/logic/a/j;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->v:Lcom/keniu/security/e/e;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->b(Lcom/keniu/security/e/c;)V

    .line 179
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/jxphone/mosecurity/c/b;

    const/4 v1, 0x0

    sget-object v2, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/jxphone/mosecurity/c/b;->a([Lcom/jxphone/mosecurity/c/b;)V

    .line 180
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 465
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 466
    sget-object v0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->o:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/util/af;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 467
    const/4 v0, 0x1

    .line 469
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 254
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 256
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->showDialog(I)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x7f080416
        :pswitch_0
    .end packed-switch
.end method

.method protected final onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-super {p0, p1, p2}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 418
    return-void
.end method

.method protected final onResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->a:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 126
    :cond_0
    return-void
.end method

.method public final synthetic onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->c()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
