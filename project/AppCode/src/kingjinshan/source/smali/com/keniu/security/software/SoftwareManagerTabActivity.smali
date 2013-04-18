.class public Lcom/keniu/security/software/SoftwareManagerTabActivity;
.super Landroid/app/TabActivity;
.source "SoftwareManagerTabActivity.java"


# static fields
.field public static a:I


# instance fields
.field private b:Landroid/widget/RadioGroup;

.field private c:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/keniu/security/software/SoftwareManagerTabActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/software/SoftwareManagerTabActivity;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManagerTabActivity;->c:Landroid/widget/TabHost;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 21
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0, v4}, Lcom/keniu/security/software/SoftwareManagerTabActivity;->requestWindowFeature(I)Z

    .line 25
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/SoftwareManagerTabActivity;->setContentView(I)V

    .line 26
    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/SoftwareManagerTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManagerTabActivity;->b:Landroid/widget/RadioGroup;

    .line 28
    invoke-virtual {p0}, Lcom/keniu/security/software/SoftwareManagerTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/software/SoftwareManagerTabActivity;->c:Landroid/widget/TabHost;

    .line 37
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManagerTabActivity;->c:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/keniu/security/software/SoftwareManagerTabActivity;->c:Landroid/widget/TabHost;

    const-string v2, "tab1"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b0706

    invoke-virtual {p0, v2}, Lcom/keniu/security/software/SoftwareManagerTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 42
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManagerTabActivity;->c:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/keniu/security/software/SoftwareManagerTabActivity;->c:Landroid/widget/TabHost;

    const-string v2, "tab2"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b0707

    invoke-virtual {p0, v2}, Lcom/keniu/security/software/SoftwareManagerTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/keniu/security/software/APKManagerActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 48
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManagerTabActivity;->b:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/keniu/security/software/aw;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/aw;-><init>(Lcom/keniu/security/software/SoftwareManagerTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/keniu/security/software/SoftwareManagerTabActivity;->c:Landroid/widget/TabHost;

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 67
    const v0, 0x7f080138

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/SoftwareManagerTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    .line 68
    invoke-virtual {p0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 139
    return-void
.end method
