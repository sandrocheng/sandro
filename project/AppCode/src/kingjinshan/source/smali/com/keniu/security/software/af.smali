.class final Lcom/keniu/security/software/af;
.super Landroid/widget/BaseAdapter;
.source "SoftwareManager2.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/software/SoftwareManager2;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/software/SoftwareManager2;)V
    .locals 1
    .parameter

    .prologue
    .line 950
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/software/af;-><init>(Lcom/keniu/security/software/SoftwareManager2;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/software/SoftwareManager2;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 950
    iput-object p1, p0, Lcom/keniu/security/software/af;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x3

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 959
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 964
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 969
    iget-object v0, p0, Lcom/keniu/security/software/af;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v0}, Lcom/keniu/security/software/SoftwareManager2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 972
    const v0, 0x7f080367

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 974
    const v1, 0x7f080368

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 976
    packed-switch p1, :pswitch_data_0

    .line 992
    :goto_0
    return-object v2

    .line 978
    :pswitch_0
    iget-object v3, p0, Lcom/keniu/security/software/af;->a:Lcom/keniu/security/software/SoftwareManager2;

    const v4, 0x7f0b055b

    invoke-virtual {v3, v4}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/keniu/security/software/af;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v5}, Lcom/keniu/security/software/SoftwareManager2;->q(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    const v0, 0x7f0b055e

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 983
    :pswitch_1
    iget-object v3, p0, Lcom/keniu/security/software/af;->a:Lcom/keniu/security/software/SoftwareManager2;

    const v4, 0x7f0b055c

    invoke-virtual {v3, v4}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/keniu/security/software/af;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v5}, Lcom/keniu/security/software/SoftwareManager2;->u(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    const v0, 0x7f0b055f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 988
    :pswitch_2
    iget-object v3, p0, Lcom/keniu/security/software/af;->a:Lcom/keniu/security/software/SoftwareManager2;

    const v4, 0x7f0b055d

    invoke-virtual {v3, v4}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/keniu/security/software/af;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v5}, Lcom/keniu/security/software/SoftwareManager2;->w(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    const v0, 0x7f0b0560

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 976
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
