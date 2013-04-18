.class public Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;
.super Landroid/app/Activity;
.source "NotificationPreferenceActivity.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:Ljava/lang/String; = "flag"


# instance fields
.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/EditText;

.field private f:I

.field private g:Lcom/keniu/security/a;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->f:I

    return v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->f:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0b064f

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0b065d

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)Lcom/keniu/security/a;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->g:Lcom/keniu/security/a;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 62
    const v0, 0x7f080146

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->d:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->e:Landroid/widget/EditText;

    .line 66
    iget v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->f:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->g:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->aC()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->g:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->aB()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    .line 78
    :goto_1
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->g:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->aE()I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->g:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->aD()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    .line 74
    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 83
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 84
    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/bc;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/bc;-><init>(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)V

    .line 85
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/bc;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/bc;-><init>(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/ba;

    invoke-direct {v2, p0, v1}, Lcom/jxphone/mosecurity/activity/friend/ba;-><init>(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;Lcom/jxphone/mosecurity/activity/friend/bc;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/bb;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/bb;-><init>(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->requestWindowFeature(I)Z

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->h:Landroid/widget/TextView;

    .line 37
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->g:Lcom/keniu/security/a;

    .line 38
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "flag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->f:I

    .line 39
    iget v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->f:I

    if-ne v0, v2, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->finish()V

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    iget v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->f:I

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_1
    const v0, 0x7f080146

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->d:Landroid/widget/ImageView;

    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->e:Landroid/widget/EditText;

    iget v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->f:I

    packed-switch v0, :pswitch_data_1

    .line 45
    :goto_2
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/bc;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/bc;-><init>(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)V

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/bc;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/bc;-><init>(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/ba;

    invoke-direct {v2, p0, v1}, Lcom/jxphone/mosecurity/activity/friend/ba;-><init>(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;Lcom/jxphone/mosecurity/activity/friend/bc;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/bb;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/bb;-><init>(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0b064f

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0b065d

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 44
    :pswitch_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->g:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->aC()I

    move-result v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->g:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->aB()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    :goto_3
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->g:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->aE()I

    move-result v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->g:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->aD()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_3

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 44
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
