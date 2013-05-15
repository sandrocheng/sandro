.class public Lcom/avast/android/generic/ui/CustomNumberDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "CustomNumberDialog.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/view/View;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "[0-9+()\\-#]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avast/android/generic/ui/CustomNumberDialog;->a:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "[0-9+()\\-#.*]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avast/android/generic/ui/CustomNumberDialog;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/CustomNumberDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 140
    sget v0, Lcom/avast/android/generic/t;->H:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->c:Landroid/widget/EditText;

    .line 141
    sget v0, Lcom/avast/android/generic/t;->l:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->d:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/avast/android/generic/t;->aN:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->e:Landroid/widget/CheckBox;

    .line 143
    sget v0, Lcom/avast/android/generic/t;->aj:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->f:Landroid/view/View;

    .line 145
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->g:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->e:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Z)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/avast/android/generic/ui/s;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/ui/s;-><init>(Lcom/avast/android/generic/ui/CustomNumberDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Z)V

    .line 151
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->e:Landroid/widget/CheckBox;

    new-instance v1, Lcom/avast/android/generic/ui/r;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/ui/r;-><init>(Lcom/avast/android/generic/ui/CustomNumberDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/CustomNumberDialog;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/CustomNumberDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/ui/CustomNumberDialog;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->d:Landroid/widget/TextView;

    sget v1, Lcom/avast/android/generic/z;->aZ:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->d:Landroid/widget/TextView;

    sget v1, Lcom/avast/android/generic/z;->cq:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->d:Landroid/widget/TextView;

    sget v1, Lcom/avast/android/generic/z;->am:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 206
    iget-object v1, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 207
    return-void

    .line 206
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    const-string v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    const-string v2, "[^0-9]"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 250
    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    invoke-static {p0, p1}, Lcom/avast/android/generic/ui/CustomNumberDialog;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 221
    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/generic/ui/CustomNumberDialog;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 232
    if-eqz p1, :cond_0

    sget-object v0, Lcom/avast/android/generic/ui/CustomNumberDialog;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    sget-object v0, Lcom/avast/android/generic/ui/CustomNumberDialog;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    :cond_1
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "disable_wildcards"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->g:Z

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-boolean v2, p0, Lcom/avast/android/generic/ui/CustomNumberDialog;->g:Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    sget v2, Lcom/avast/android/generic/z;->br:I

    invoke-virtual {p0, v2}, Lcom/avast/android/generic/ui/CustomNumberDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 84
    sget v2, Lcom/avast/android/generic/z;->i:I

    new-instance v3, Lcom/avast/android/generic/ui/n;

    invoke-direct {v3, p0}, Lcom/avast/android/generic/ui/n;-><init>(Lcom/avast/android/generic/ui/CustomNumberDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    sget v2, Lcom/avast/android/generic/z;->e:I

    new-instance v3, Lcom/avast/android/generic/ui/o;

    invoke-direct {v3, p0}, Lcom/avast/android/generic/ui/o;-><init>(Lcom/avast/android/generic/ui/CustomNumberDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 97
    sget v2, Lcom/avast/android/generic/v;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Landroid/view/View;)V

    .line 99
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 102
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 105
    new-instance v1, Lcom/avast/android/generic/ui/p;

    invoke-direct {v1, p0, v0}, Lcom/avast/android/generic/ui/p;-><init>(Lcom/avast/android/generic/ui/CustomNumberDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 131
    return-object v0
.end method
