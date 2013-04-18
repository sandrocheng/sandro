.class public Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;
.super Landroid/app/Activity;
.source "FriendNameAndIconActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:Ljava/lang/String; = "flag"

.field public static final d:I = 0x6


# instance fields
.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/EditText;

.field private g:Lcom/keniu/security/a;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->k:I

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->k:I

    return p1
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const v1, 0x7f020146

    .line 50
    const v0, 0x7f080150

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->e:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->f:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->i:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->j:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->g:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->aA()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->g:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->aF()Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void

    :pswitch_0
    move v0, v1

    .line 61
    goto :goto_0

    .line 63
    :pswitch_1
    const v0, 0x7f020137

    .line 64
    goto :goto_0

    .line 66
    :pswitch_2
    const v0, 0x7f020138

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b()V
    .locals 3

    .prologue
    .line 77
    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 78
    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/ad;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/ad;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;)V

    .line 79
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/ad;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/ad;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/ac;

    invoke-direct {v2, p0, v1}, Lcom/jxphone/mosecurity/activity/friend/ac;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;Lcom/jxphone/mosecurity/activity/friend/ad;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->f:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 90
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->f:Landroid/widget/EditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 92
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    const v0, 0x7f0b0640

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 146
    const v0, 0x7f0b0641

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->g:Lcom/keniu/security/a;

    const v2, 0x7f0b03d9

    invoke-virtual {p0, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->g:Lcom/keniu/security/a;

    iget v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/a;->a(Ljava/lang/Integer;)V

    .line 156
    :pswitch_1
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->finish()V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x7f080153
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v2, 0x7f020146

    const/4 v3, 0x1

    .line 39
    invoke-virtual {p0, v3}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->requestWindowFeature(I)Z

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->h:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->h:Landroid/widget/TextView;

    const-string v1, "\u8bbe\u7f6e\u79c1\u5bc6\u7a7a\u95f4\u540d\u79f0\u53ca\u56fe\u6807"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->g:Lcom/keniu/security/a;

    .line 45
    const v0, 0x7f080150

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->g:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->aA()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->g:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->aF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/ad;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/ad;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;)V

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/ad;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/ad;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/ac;

    invoke-direct {v2, p0, v1}, Lcom/jxphone/mosecurity/activity/friend/ac;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;Lcom/jxphone/mosecurity/activity/friend/ad;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->f:Landroid/widget/EditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 47
    return-void

    :pswitch_0
    move v0, v2

    .line 45
    goto :goto_0

    :pswitch_1
    const v0, 0x7f020137

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020138

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
