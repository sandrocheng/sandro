.class final Lorg/antivirus/ui/privacy/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/privacy/PrivacyActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/privacy/PrivacyActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    iget-object v0, v0, Lorg/antivirus/ui/privacy/PrivacyActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/performance/b;

    iget v1, v0, Lorg/antivirus/ui/performance/b;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, v0, Lorg/antivirus/ui/performance/b;->b:Z

    if-eqz v0, :cond_0

    iget-object v6, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    const v1, 0x7f09005a

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09005b

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09005c

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200b5

    invoke-static/range {v0 .. v5}, Lorg/antivirus/ui/privacy/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->a(Lorg/antivirus/ui/privacy/PrivacyActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    iget-object v0, v0, Lorg/antivirus/ui/privacy/PrivacyActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/performance/b;

    iget v0, v0, Lorg/antivirus/ui/performance/b;->a:I

    invoke-static {v1, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->a(Lorg/antivirus/ui/privacy/PrivacyActivity;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    const-class v3, Lorg/antivirus/applocker/AppLockerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/privacy/PrivacyActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    const-string v1, "privacy"

    const-string v2, "app_locker"

    const-string v3, "permitted"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, v0, Lorg/antivirus/ui/performance/b;->b:Z

    if-eqz v0, :cond_1

    iget-object v6, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    const v1, 0x7f0901c9

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901ca

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0901cb

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200b4

    invoke-static/range {v0 .. v5}, Lorg/antivirus/ui/privacy/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->a(Lorg/antivirus/ui/privacy/PrivacyActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    iget-object v0, v0, Lorg/antivirus/ui/privacy/PrivacyActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/performance/b;

    iget v0, v0, Lorg/antivirus/ui/performance/b;->a:I

    invoke-static {v1, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->a(Lorg/antivirus/ui/privacy/PrivacyActivity;I)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    const-class v3, Lorg/antivirus/ui/backup/apps/BackupRestoreTab;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/privacy/PrivacyActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    const-string v1, "privacy"

    const-string v2, "app_backup"

    const-string v3, "permitted"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    const v1, 0x7f09007b

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    const-string v1, "privacy"

    const-string v2, "app_backup"

    const-string v3, "forbidden"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-static {v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->d(Lorg/antivirus/ui/privacy/PrivacyActivity;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-static {v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->e(Lorg/antivirus/ui/privacy/PrivacyActivity;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/antivirus/ui/privacy/b;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-static {v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->f(Lorg/antivirus/ui/privacy/PrivacyActivity;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
