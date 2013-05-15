.class public Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "FileShieldFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/af;


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/t;

.field private b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->f:Z

    .line 141
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->ac()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 142
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->ae()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 143
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->ad()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 144
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->af()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->f:Z

    .line 147
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 150
    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "/ms/shieldControl/fileShield"

    return-object v0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f0c0413

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->a:Lcom/avast/android/mobilesecurity/t;

    .line 132
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->c()V

    .line 133
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const v0, 0x7f03006a

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
    .line 54
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f07017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 57
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;-><init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 87
    const v0, 0x7f07017d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 88
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/shieldcontrol/e;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/e;-><init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 100
    const v0, 0x7f07017c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 101
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/shieldcontrol/f;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/f;-><init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 113
    const v0, 0x7f07017e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 114
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/shieldcontrol/g;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/g;-><init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 125
    return-void
.end method
