.class public Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "MessageShieldFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/af;


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/t;

.field private b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->e:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->e:Z

    .line 127
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 128
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ak()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 130
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->al()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 132
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->e:Z

    .line 134
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 137
    return-void

    :cond_0
    move v0, v2

    .line 127
    goto :goto_0

    :cond_1
    move v0, v2

    .line 128
    goto :goto_1

    :cond_2
    move v1, v2

    .line 130
    goto :goto_2
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/u;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "/ms/shieldControl/messageShield"

    return-object v0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f0c0407

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->a:Lcom/avast/android/mobilesecurity/t;

    .line 118
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->a(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    const v0, 0x7f030069

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f0c040a

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c040b

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    const v0, 0x7f0700c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v0, 0x7f070178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/shieldcontrol/h;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/h;-><init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 83
    const v0, 0x7f070179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 84
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/shieldcontrol/i;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/i;-><init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 96
    const v0, 0x7f07017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 98
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/shieldcontrol/j;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/j;-><init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 110
    return-void
.end method
