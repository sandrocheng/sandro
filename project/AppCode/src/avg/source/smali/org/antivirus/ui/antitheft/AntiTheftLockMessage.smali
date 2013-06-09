.class public Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;
.super Lorg/antivirus/ui/BaseToolActivity;


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolActivity;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->e:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;)V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->e:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->e:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->e:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic c(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f090080

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f020051

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030015

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080094

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lorg/antivirus/antitheft/t;

    const-string v4, "[^\\d\\w\\+\\-\\.\\@\\ ]"

    invoke-direct {v3, v4}, Lorg/antivirus/antitheft/t;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->e:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090003

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/antivirus/ui/antitheft/t;

    invoke-direct {v3, p0, v0}, Lorg/antivirus/ui/antitheft/t;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090004

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/antivirus/ui/antitheft/u;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/antitheft/u;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->a:Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const v10, 0x7f08000b

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->setContentView(I)V

    invoke-static {}, Lorg/antivirus/AVSettings;->getLostMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v5, v9, [Ljava/lang/String;

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v9, :cond_1

    const-string v3, ""

    aput-object v3, v5, v1

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x7c

    if-eq v3, v6, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v5, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_2
    if-ge v0, v9, :cond_4

    aget-object v1, v5, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->e:[Ljava/lang/String;

    aget-object v3, v5, v0

    aput-object v3, v1, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->e:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->e:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->e:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v8

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->e:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    :cond_4
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090029

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09002a

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0800a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->b:Landroid/widget/TextView;

    const v0, 0x7f0800a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->c:Landroid/widget/TextView;

    const v0, 0x7f0800a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->c()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Lorg/antivirus/antitheft/t;

    const-string v5, "[^\\d\\w\\+\\-\\@\\ \\.\\,]"

    invoke-direct {v4, v5}, Lorg/antivirus/antitheft/t;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v8

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v3, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->e:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09002f

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090003

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/antivirus/ui/antitheft/m;

    invoke-direct {v4, p0, v0}, Lorg/antivirus/ui/antitheft/m;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090004

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/antivirus/ui/antitheft/n;

    invoke-direct {v4, p0}, Lorg/antivirus/ui/antitheft/n;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const v1, 0x7f08009e

    invoke-virtual {p0, v1}, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f09002b

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0800a1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f09002c

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/antivirus/ui/antitheft/o;

    invoke-direct {v1, p0, v0, v3}, Lorg/antivirus/ui/antitheft/o;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f090030

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f090031

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/antivirus/ui/antitheft/s;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/antitheft/s;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Lorg/antivirus/antitheft/t;

    const-string v5, "[^\\d\\w\\+\\-\\@\\ \\.\\,]"

    invoke-direct {v4, v5}, Lorg/antivirus/antitheft/t;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v8

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v3, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->e:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09002f

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090003

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/antivirus/ui/antitheft/p;

    invoke-direct {v4, p0, v0}, Lorg/antivirus/ui/antitheft/p;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090004

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/antivirus/ui/antitheft/q;

    invoke-direct {v4, p0}, Lorg/antivirus/ui/antitheft/q;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const v1, 0x7f0800a0

    invoke-virtual {p0, v1}, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f09002d

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0800a1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f09002e

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/antivirus/ui/antitheft/r;

    invoke-direct {v1, p0, v0, v3}, Lorg/antivirus/ui/antitheft/r;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onResume()V

    invoke-direct {p0}, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->c()V

    return-void
.end method
