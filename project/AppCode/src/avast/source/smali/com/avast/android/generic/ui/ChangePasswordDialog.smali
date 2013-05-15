.class public Lcom/avast/android/generic/ui/ChangePasswordDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ChangePasswordDialog.java"


# instance fields
.field private a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

.field private b:Lcom/avast/android/generic/ui/widget/PasswordTextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private a()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/avast/android/generic/ui/g;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/ui/g;-><init>(Lcom/avast/android/generic/ui/ChangePasswordDialog;)V

    .line 289
    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lcom/avast/android/generic/util/s;->a(I)Z

    .line 100
    :cond_0
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 74
    new-instance v0, Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-direct {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;-><init>()V

    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v2, "enableProtection"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/ChangePasswordDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/ChangePasswordDialog;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/ChangePasswordDialog;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->f:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->b:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->e:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 84
    sget v0, Lcom/avast/android/generic/t;->aT:I

    invoke-direct {p0, v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a(I)V

    .line 85
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 106
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    sget v1, Lcom/avast/android/generic/z;->M:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/v;->s:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 110
    sget v0, Lcom/avast/android/generic/t;->av:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/PasswordTextView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    .line 111
    sget v0, Lcom/avast/android/generic/t;->aw:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/PasswordTextView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->b:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    .line 113
    sget v0, Lcom/avast/android/generic/t;->aE:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->d:Landroid/widget/ImageView;

    .line 114
    sget v0, Lcom/avast/android/generic/t;->aD:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->e:Landroid/widget/ImageView;

    .line 116
    sget v0, Lcom/avast/android/generic/t;->Y:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->c:Landroid/widget/TextView;

    .line 118
    invoke-direct {p0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a()Landroid/text/TextWatcher;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object v1, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->b:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    iget-object v0, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    new-array v0, v9, [Landroid/text/InputFilter;

    .line 125
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    .line 126
    iget-object v1, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 127
    iget-object v1, p0, Lcom/avast/android/generic/ui/ChangePasswordDialog;->b:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 129
    sget v0, Lcom/avast/android/generic/t;->aY:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    new-instance v2, Lcom/avast/android/generic/ui/a/a;

    invoke-direct {v2, v3}, Lcom/avast/android/generic/ui/a/a;-><init>(Landroid/view/View;)V

    .line 131
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {v2, v0, v1}, Lcom/avast/android/generic/ui/a/a;->setStartTime(J)V

    .line 132
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 134
    sget v0, Lcom/avast/android/generic/t;->I:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 135
    sget v0, Lcom/avast/android/generic/z;->cw:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 136
    sget v0, Lcom/avast/android/generic/z;->av:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 137
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    new-instance v0, Lcom/avast/android/generic/ui/b;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/avast/android/generic/ui/b;-><init>(Lcom/avast/android/generic/ui/ChangePasswordDialog;Lcom/avast/android/generic/ui/a/a;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 157
    sget v0, Lcom/avast/android/generic/z;->i:I

    new-instance v1, Lcom/avast/android/generic/ui/c;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/ui/c;-><init>(Lcom/avast/android/generic/ui/ChangePasswordDialog;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    sget v0, Lcom/avast/android/generic/z;->e:I

    new-instance v1, Lcom/avast/android/generic/ui/d;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/ui/d;-><init>(Lcom/avast/android/generic/ui/ChangePasswordDialog;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 178
    new-instance v1, Lcom/avast/android/generic/ui/e;

    invoke-direct {v1, p0, v0}, Lcom/avast/android/generic/ui/e;-><init>(Lcom/avast/android/generic/ui/ChangePasswordDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 208
    return-object v0
.end method
