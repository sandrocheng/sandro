.class public Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;
.super Lcom/antivirus/ui/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->m()V

    return-void
.end method

.method private k()V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f060044

    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0, v4, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v2, 0x7f0200c5

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v2, Lcom/antivirus/ui/callmessagefilter/e;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/callmessagefilter/e;-><init>(Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0, v4, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v3, 0x7f0200c4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v3, Lcom/antivirus/ui/callmessagefilter/f;

    invoke-direct {v3, p0}, Lcom/antivirus/ui/callmessagefilter/f;-><init>(Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private l()Lcom/antivirus/ui/callmessagefilter/fragment/n;
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->a()Lcom/antivirus/ui/callmessagefilter/fragment/n;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0901f0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0200d4

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->u()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const v3, 0x7f080097

    invoke-virtual {v0, v3}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->H()Lcom/antivirus/ui/callmessagefilter/fragment/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->H()Lcom/antivirus/ui/callmessagefilter/w;

    move-result-object v3

    invoke-interface {v3}, Lcom/antivirus/ui/callmessagefilter/w;->a()I

    move-result v3

    new-instance v4, Lcom/avg/ui/general/b/e;

    invoke-direct {v4, p0, v3, v2}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    new-instance v2, Lcom/antivirus/ui/callmessagefilter/g;

    invoke-direct {v2, p0, v0}, Lcom/antivirus/ui/callmessagefilter/g;-><init>(Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;)V

    invoke-virtual {v1, v4, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->l()Lcom/antivirus/ui/callmessagefilter/fragment/n;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/n;->a:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    :cond_0
    sget-object v1, Lcom/antivirus/ui/callmessagefilter/h;->a:[I

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/n;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "call_message_blocker"

    const-string v1, "call_message_blocker_filter_on_calls_tab"

    invoke-static {p0, v0, v1, v6, v5}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "call_message_blocker"

    const-string v1, "call_message_blocker_filter_on_messages_tab"

    invoke-static {p0, v0, v1, v6, v5}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private u()[Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->l()Lcom/antivirus/ui/callmessagefilter/fragment/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/n;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->setContentView(I)V

    const/4 v1, 0x1

    const v2, 0x7f020022

    const v3, 0x7f020023

    const v0, 0x7f0901dd

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->a(ZIILjava/lang/String;Z)V

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->k()V

    return-void
.end method
