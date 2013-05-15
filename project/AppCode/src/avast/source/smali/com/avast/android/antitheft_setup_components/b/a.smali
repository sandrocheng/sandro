.class public Lcom/avast/android/antitheft_setup_components/b/a;
.super Ljava/lang/Object;
.source "EdifyBinaryHelper.java"


# direct methods
.method public static a(Lcom/avast/android/generic/util/o;)I
    .locals 2
    .parameter

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 14
    sget v0, Lcom/avast/android/antitheft_setup_components/f;->c:I

    .line 25
    :goto_0
    return v0

    .line 16
    :cond_0
    sget-object v0, Lcom/avast/android/antitheft_setup_components/b/d;->a:[I

    invoke-virtual {p0}, Lcom/avast/android/generic/util/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 25
    sget v0, Lcom/avast/android/antitheft_setup_components/f;->c:I

    goto :goto_0

    .line 19
    :pswitch_0
    sget v0, Lcom/avast/android/antitheft_setup_components/f;->a:I

    goto :goto_0

    .line 21
    :pswitch_1
    sget v0, Lcom/avast/android/antitheft_setup_components/f;->c:I

    goto :goto_0

    .line 23
    :pswitch_2
    sget v0, Lcom/avast/android/antitheft_setup_components/f;->b:I

    goto :goto_0

    .line 16
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/avast/android/antitheft_setup_components/b/e;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 30
    sget v0, Lcom/avast/android/antitheft_setup_components/g;->w:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget v3, Lcom/avast/android/antitheft_setup_components/g;->B:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/avast/android/antitheft_setup_components/g;->ac:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/avast/android/antitheft_setup_components/g;->U:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/avast/android/antitheft_setup_components/g;->r:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/avast/android/antitheft_setup_components/b/b;

    invoke-direct {v2, p1, p0}, Lcom/avast/android/antitheft_setup_components/b/b;-><init>(Lcom/avast/android/antitheft_setup_components/b/e;Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Lcom/avast/android/antitheft_setup_components/b/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/avast/android/antitheft_setup_components/b/a;->c(Landroid/content/Context;Lcom/avast/android/antitheft_setup_components/b/e;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/avast/android/antitheft_setup_components/b/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    sget v0, Lcom/avast/android/antitheft_setup_components/g;->q:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/avast/android/antitheft_setup_components/b/c;

    invoke-direct {v1, p0, p1}, Lcom/avast/android/antitheft_setup_components/b/c;-><init>(Landroid/content/Context;Lcom/avast/android/antitheft_setup_components/b/e;)V

    invoke-static {p0, v0, v1}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    return-void
.end method
