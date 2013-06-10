.class final Lorg/antivirus/ui/antitheft/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/antitheft/d;->a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    long-to-int v0, p4

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/d;->a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-static {v0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/d;->a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/antitheft/d;->a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-virtual {v2}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/antivirus/ui/antitheft/AntiTheftSMSCommandsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/d;->a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    const-string v1, "anti_theft"

    const-string v2, "how_to"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/d;->a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-static {v0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->c(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
