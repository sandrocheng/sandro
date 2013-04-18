.class final Lcom/jxphone/mosecurity/activity/friend/bf;
.super Ljava/lang/Object;
.source "PeopleCallLogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/bf;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 156
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bf;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 157
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 158
    const v1, 0x7f0b05fb

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 159
    const v1, 0x7f0b0683

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 160
    const v1, 0x7f0b0682

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/bg;

    invoke-direct {v2, p0, p1}, Lcom/jxphone/mosecurity/activity/friend/bg;-><init>(Lcom/jxphone/mosecurity/activity/friend/bf;I)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 167
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/bf;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/bf;->a(I)V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-static {}, Lcom/keniu/security/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, p3}, Lcom/jxphone/mosecurity/activity/friend/bf;->a(I)V

    .line 188
    :goto_0
    return-void

    .line 178
    :cond_0
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bf;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bf;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;

    const v2, 0x7f0b024a

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f07001a

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/bh;

    invoke-direct {v2, p0, p3}, Lcom/jxphone/mosecurity/activity/friend/bh;-><init>(Lcom/jxphone/mosecurity/activity/friend/bf;I)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_0
.end method
