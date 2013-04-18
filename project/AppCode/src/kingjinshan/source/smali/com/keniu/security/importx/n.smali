.class final Lcom/keniu/security/importx/n;
.super Lcom/jxphone/mosecurity/activity/a/f;
.source "ImportfCalllogActivity.java"


# instance fields
.field final synthetic g:Lcom/keniu/security/importx/ImportfCalllogActivity;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/importx/ImportfCalllogActivity;Landroid/content/Context;[Lcom/jxphone/mosecurity/c/j;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/keniu/security/importx/n;-><init>(Lcom/keniu/security/importx/ImportfCalllogActivity;Landroid/content/Context;[Lcom/jxphone/mosecurity/c/j;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/importx/ImportfCalllogActivity;Landroid/content/Context;[Lcom/jxphone/mosecurity/c/j;B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/keniu/security/importx/n;->g:Lcom/keniu/security/importx/ImportfCalllogActivity;

    .line 56
    invoke-static {p1}, Lcom/keniu/security/importx/ImportfCalllogActivity;->a(Lcom/keniu/security/importx/ImportfCalllogActivity;)Z

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/jxphone/mosecurity/activity/a/f;-><init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/j;Z)V

    .line 57
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;
    .locals 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/keniu/security/importx/n;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/keniu/security/importx/n;->e:Z

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jxphone/mosecurity/logic/a/d;->b(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/jxphone/mosecurity/c/b;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/keniu/security/importx/n;->g:Lcom/keniu/security/importx/ImportfCalllogActivity;

    if-nez p1, :cond_0

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->a:Lcom/jxphone/mosecurity/c/c;

    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/keniu/security/importx/ImportfCalllogActivity;->a(Lcom/jxphone/mosecurity/c/c;Landroid/view/View;)V

    .line 95
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v1

    goto :goto_0
.end method

.method public final d(I)Lcom/keniu/security/commumgr/a/t;
    .locals 2
    .parameter

    .prologue
    .line 61
    new-instance v0, Lcom/keniu/security/commumgr/a/t;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/keniu/security/commumgr/a/t;-><init>(I)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/keniu/security/importx/n;->a(I)Lcom/jxphone/mosecurity/c/j;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/a/t;->a(Lcom/jxphone/mosecurity/c/j;)V

    .line 64
    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/jxphone/mosecurity/activity/a/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 70
    invoke-virtual {p0, p1}, Lcom/keniu/security/importx/n;->a(I)Lcom/jxphone/mosecurity/c/j;

    move-result-object v1

    .line 71
    const v2, 0x7f0800e6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 74
    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/j;->i()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b067f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/j;->i()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
