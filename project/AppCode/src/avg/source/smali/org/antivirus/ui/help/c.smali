.class final Lorg/antivirus/ui/help/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/help/Help;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/help/Help;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f0900d4

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v0}, Lorg/antivirus/core/a/n;->a(Landroid/content/Context;)Z

    move-result v0

    long-to-int v1, p4

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    const-string v2, "/help.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/help/Help;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    const-string v1, "help"

    const-string v2, "online_help"

    invoke-static {v0, v1, v2, v4}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "__SAC"

    const/16 v2, 0x78

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "__SAD"

    iget-object v0, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v0}, Lorg/antivirus/ui/help/Help;->e(Lorg/antivirus/ui/help/Help;)Lorg/antivirus/core/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/tospro.html"

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/help/Help;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    const-string v1, "help"

    const-string v2, "terms_of_service"

    invoke-static {v0, v1, v2, v4}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "/tos.html"

    goto :goto_1

    :pswitch_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://www.avg.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/help/Help;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    const-string v1, "help"

    const-string v2, "avg"

    invoke-static {v0, v1, v2, v4}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v0}, Lorg/antivirus/ui/help/Help;->f(Lorg/antivirus/ui/help/Help;)V

    iget-object v0, p0, Lorg/antivirus/ui/help/c;->a:Lorg/antivirus/ui/help/Help;

    const-string v1, "help"

    const-string v2, "contact_us"

    invoke-static {v0, v1, v2, v4}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
