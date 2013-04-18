.class final Lcom/keniu/security/software/aw;
.super Ljava/lang/Object;
.source "SoftwareManagerTabActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/SoftwareManagerTabActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/SoftwareManagerTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/keniu/security/software/aw;->a:Lcom/keniu/security/software/SoftwareManagerTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    packed-switch p2, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 53
    :pswitch_0
    const/4 v0, 0x0

    sput v0, Lcom/keniu/security/software/SoftwareManagerTabActivity;->a:I

    .line 54
    iget-object v0, p0, Lcom/keniu/security/software/aw;->a:Lcom/keniu/security/software/SoftwareManagerTabActivity;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManagerTabActivity;->a(Lcom/keniu/security/software/SoftwareManagerTabActivity;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_1
    const/4 v0, 0x1

    sput v0, Lcom/keniu/security/software/SoftwareManagerTabActivity;->a:I

    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/aw;->a:Lcom/keniu/security/software/SoftwareManagerTabActivity;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManagerTabActivity;->a(Lcom/keniu/security/software/SoftwareManagerTabActivity;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "tab2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x7f080138
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
