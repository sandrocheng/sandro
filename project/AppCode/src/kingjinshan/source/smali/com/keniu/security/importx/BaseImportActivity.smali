.class public abstract Lcom/keniu/security/importx/BaseImportActivity;
.super Lcom/jxphone/mosecurity/activity/BaseContactActivity;
.source "BaseImportActivity.java"


# static fields
.field protected static l:Lcom/keniu/security/importx/k; = null

.field private static final n:Ljava/lang/String; = "currentPosition"


# instance fields
.field protected m:Landroid/widget/ListView;

.field private o:Z

.field private p:I

.field private final q:I

.field private final r:I

.field private final s:Landroid/os/Handler;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/keniu/security/importx/BaseImportActivity;->o:Z

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->q:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->r:I

    .line 43
    new-instance v0, Lcom/keniu/security/importx/a;

    invoke-direct {v0, p0}, Lcom/keniu/security/importx/a;-><init>(Lcom/keniu/security/importx/BaseImportActivity;)V

    iput-object v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->s:Landroid/os/Handler;

    .line 236
    iput-boolean v1, p0, Lcom/keniu/security/importx/BaseImportActivity;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/importx/BaseImportActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/keniu/security/importx/BaseImportActivity;->p:I

    return p1
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/c/b;)Lcom/jxphone/mosecurity/c/b;
    .locals 0
    .parameter

    .prologue
    .line 33
    sput-object p0, Lcom/keniu/security/importx/BaseImportActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/importx/BaseImportActivity;Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/activity/r;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/keniu/security/importx/BaseImportActivity;->a(ILcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/activity/r;)V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/importx/BaseImportActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/keniu/security/importx/BaseImportActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/importx/BaseImportActivity;Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/activity/r;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/keniu/security/importx/BaseImportActivity;->a(ILcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/activity/r;)V

    return-void
.end method

.method static synthetic c(Lcom/keniu/security/importx/BaseImportActivity;)Lcom/jxphone/mosecurity/c/c;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->h:Lcom/jxphone/mosecurity/c/c;

    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/importx/BaseImportActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->p:I

    return v0
.end method

.method static synthetic o()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/keniu/security/importx/BaseImportActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic p()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/keniu/security/importx/BaseImportActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic q()Lcom/jxphone/mosecurity/c/b;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/keniu/security/importx/BaseImportActivity;->g:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->a:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->s:Landroid/os/Handler;

    new-instance v1, Lcom/keniu/security/importx/b;

    invoke-direct {v1, p0}, Lcom/keniu/security/importx/b;-><init>(Lcom/keniu/security/importx/BaseImportActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    :cond_0
    new-instance v0, Lcom/keniu/security/importx/c;

    invoke-direct {v0, p0}, Lcom/keniu/security/importx/c;-><init>(Lcom/keniu/security/importx/BaseImportActivity;)V

    invoke-virtual {v0}, Lcom/keniu/security/importx/c;->start()V

    .line 109
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->m:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/importx/e;

    invoke-direct {v1, p0}, Lcom/keniu/security/importx/e;-><init>(Lcom/keniu/security/importx/BaseImportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    return-void
.end method

.method private static t()I
    .locals 1

    .prologue
    .line 225
    const v0, 0x7f080177

    return v0
.end method


# virtual methods
.method protected final a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/keniu/security/importx/BaseImportActivity;->d()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    const-string v1, "currentPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/keniu/security/importx/BaseImportActivity;->p:I

    .line 141
    :cond_0
    return-object v0
.end method

.method protected final a(Lcom/jxphone/mosecurity/c/c;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 209
    if-nez p2, :cond_0

    .line 222
    :goto_0
    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/keniu/security/importx/j;->a:[I

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 219
    invoke-virtual {p0}, Lcom/keniu/security/importx/BaseImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 213
    :pswitch_0
    invoke-virtual {p0}, Lcom/keniu/security/importx/BaseImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 216
    :pswitch_1
    invoke-virtual {p0}, Lcom/keniu/security/importx/BaseImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->o:Z

    .line 231
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->c()Landroid/os/Bundle;

    move-result-object v0

    .line 232
    const-string v1, "currentPosition"

    iget v2, p0, Lcom/keniu/security/importx/BaseImportActivity;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    return-object v0
.end method

.method protected abstract m()Ljava/lang/String;
.end method

.method protected abstract n()Lcom/keniu/security/importx/k;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/keniu/security/importx/BaseImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    const-string v1, "list_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    check-cast v0, Lcom/jxphone/mosecurity/c/c;

    iput-object v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->h:Lcom/jxphone/mosecurity/c/c;

    .line 85
    :cond_0
    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/keniu/security/importx/BaseImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->m:Landroid/widget/ListView;

    .line 86
    iget-object v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->m:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/importx/e;

    invoke-direct {v1, p0}, Lcom/keniu/security/importx/e;-><init>(Lcom/keniu/security/importx/BaseImportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    iget-boolean v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->s:Landroid/os/Handler;

    new-instance v1, Lcom/keniu/security/importx/b;

    invoke-direct {v1, p0}, Lcom/keniu/security/importx/b;-><init>(Lcom/keniu/security/importx/BaseImportActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance v0, Lcom/keniu/security/importx/c;

    invoke-direct {v0, p0}, Lcom/keniu/security/importx/c;-><init>(Lcom/keniu/security/importx/BaseImportActivity;)V

    invoke-virtual {v0}, Lcom/keniu/security/importx/c;->start()V

    .line 88
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 129
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 116
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 118
    const v1, 0x7f0b0259

    invoke-virtual {p0, v1}, Lcom/keniu/security/importx/BaseImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 120
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 121
    new-instance v1, Lcom/keniu/security/importx/d;

    invoke-direct {v1, p0}, Lcom/keniu/security/importx/d;-><init>(Lcom/keniu/security/importx/BaseImportActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0259
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->t:Z

    .line 241
    iget-boolean v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->o:Z

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lcom/keniu/security/importx/BaseImportActivity;->l:Lcom/keniu/security/importx/k;

    .line 243
    if-eqz v0, :cond_0

    .line 244
    const/4 v1, 0x0

    sput-object v1, Lcom/keniu/security/importx/BaseImportActivity;->l:Lcom/keniu/security/importx/k;

    .line 245
    invoke-virtual {v0}, Lcom/keniu/security/importx/k;->b()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/importx/BaseImportActivity;->m:Landroid/widget/ListView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/keniu/security/importx/BaseImportActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->removeViews(II)V

    .line 249
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->onDestroy()V

    .line 250
    return-void
.end method

.method public synthetic onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/keniu/security/importx/BaseImportActivity;->c()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
