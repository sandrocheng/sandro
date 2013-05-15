.class public Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "ShieldControlFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/af;


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/t;

.field private b:Lcom/avast/android/generic/ui/widget/NextRow;

.field private c:Lcom/avast/android/generic/ui/widget/NextRow;

.field private d:Lcom/avast/android/generic/ui/widget/NextRow;

.field private e:Lcom/avast/android/generic/ui/widget/NextRow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    const v6, 0x7f070059

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    const v3, 0x7f0c040e

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/t;->av()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/NextRow;->d(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->d:Lcom/avast/android/generic/ui/widget/NextRow;

    const v3, 0x7f0c0408

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/t;->ax()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/NextRow;->d(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->c:Lcom/avast/android/generic/ui/widget/NextRow;

    const v3, 0x7f0c02e5

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/t;->az()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/NextRow;->d(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->e:Lcom/avast/android/generic/ui/widget/NextRow;

    const v3, 0x7f0c0414

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/t;->aB()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/NextRow;->d(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-virtual {v2, v6}, Lcom/avast/android/generic/ui/widget/NextRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->ag()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->d:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-virtual {v2, v6}, Lcom/avast/android/generic/ui/widget/NextRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->aj()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->c:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-virtual {v0, v6}, Lcom/avast/android/generic/ui/widget/NextRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->S()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->e:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-virtual {v0, v6}, Lcom/avast/android/generic/ui/widget/NextRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->ac()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 120
    return-void

    :cond_0
    move v0, v1

    .line 116
    goto :goto_0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/u;->a(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "/ms/shieldControl"

    return-object v0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0c01f1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->a:Lcom/avast/android/mobilesecurity/t;

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    const v0, 0x7f030067

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 100
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->c()V

    .line 101
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f070059

    const/4 v2, 0x0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f070171

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 54
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/shieldcontrol/k;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/k;-><init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/NextRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 62
    const v0, 0x7f070172

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->c:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 63
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->c:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/shieldcontrol/l;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/l;-><init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->c:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/NextRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 71
    const v0, 0x7f070173

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->d:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 72
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->d:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/shieldcontrol/m;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/m;-><init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->d:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/NextRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 80
    const v0, 0x7f070174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->e:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 81
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->e:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/shieldcontrol/n;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/n;-><init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->e:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/NextRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 88
    return-void
.end method
