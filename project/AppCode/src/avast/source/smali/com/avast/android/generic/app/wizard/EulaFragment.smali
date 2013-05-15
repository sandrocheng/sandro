.class public abstract Lcom/avast/android/generic/app/wizard/EulaFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "EulaFragment.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 40
    sget v0, Lcom/avast/android/generic/z;->cH:I

    iput v0, p0, Lcom/avast/android/generic/app/wizard/EulaFragment;->c:I

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/wizard/EulaFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/avast/android/generic/app/wizard/EulaFragment;->c:I

    return v0
.end method

.method static synthetic a(Lcom/avast/android/generic/app/wizard/EulaFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/avast/android/generic/app/wizard/EulaFragment;->c:I

    return p1
.end method

.method static synthetic b(Lcom/avast/android/generic/app/wizard/EulaFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/EulaFragment;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/generic/app/wizard/EulaFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/EulaFragment;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/generic/app/wizard/EulaFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/avast/android/generic/app/wizard/EulaFragment;->d:J

    return-wide v0
.end method


# virtual methods
.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    sget v0, Lcom/avast/android/generic/v;->H:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, Lcom/avast/android/generic/app/wizard/EulaFragment;->b(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 50
    check-cast v0, Landroid/widget/ScrollView;

    sget v2, Lcom/avast/android/generic/q;->e:I

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 53
    :cond_0
    sget v0, Lcom/avast/android/generic/t;->E:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/app/wizard/EulaFragment;->a:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/avast/android/generic/t;->aG:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/app/wizard/EulaFragment;->b:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/avast/android/generic/y;->a:I

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/al;->a(Landroid/content/res/Resources;I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/avast/android/generic/app/wizard/EulaFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v0, Lcom/avast/android/generic/ui/a/a;

    iget-object v2, p0, Lcom/avast/android/generic/app/wizard/EulaFragment;->a:Landroid/widget/TextView;

    invoke-direct {v0, v2}, Lcom/avast/android/generic/ui/a/a;-><init>(Landroid/view/View;)V

    .line 60
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Lcom/avast/android/generic/ui/a/a;->setStartTime(J)V

    .line 61
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Lcom/avast/android/generic/ui/a/a;->setDuration(J)V

    .line 62
    iget-object v2, p0, Lcom/avast/android/generic/app/wizard/EulaFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 64
    iget-object v2, p0, Lcom/avast/android/generic/app/wizard/EulaFragment;->b:Landroid/widget/TextView;

    new-instance v3, Lcom/avast/android/generic/app/wizard/a;

    invoke-direct {v3, p0, v0}, Lcom/avast/android/generic/app/wizard/a;-><init>(Lcom/avast/android/generic/app/wizard/EulaFragment;Lcom/avast/android/generic/ui/a/a;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget v0, Lcom/avast/android/generic/t;->i:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    new-instance v2, Lcom/avast/android/generic/app/wizard/b;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/app/wizard/b;-><init>(Lcom/avast/android/generic/app/wizard/EulaFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v0, Lcom/avast/android/generic/t;->f:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/avast/android/generic/app/wizard/c;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/app/wizard/c;-><init>(Lcom/avast/android/generic/app/wizard/EulaFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v0, Lcom/avast/android/generic/t;->m:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/avast/android/generic/app/wizard/d;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/app/wizard/d;-><init>(Lcom/avast/android/generic/app/wizard/EulaFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.avast.android.generic.action.SHARE_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    const-string v2, "sourcePackage"

    invoke-virtual {p0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-static {v0}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/avast/android/generic/ae;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 132
    sget v2, Lcom/avast/android/generic/t;->aM:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 133
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->p()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 134
    new-instance v3, Lcom/avast/android/generic/app/wizard/e;

    invoke-direct {v3, p0, v0}, Lcom/avast/android/generic/app/wizard/e;-><init>(Lcom/avast/android/generic/app/wizard/EulaFragment;Lcom/avast/android/generic/ae;)V

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 143
    return-object v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/app/wizard/EulaFragment;->d:J

    .line 151
    return-void
.end method
