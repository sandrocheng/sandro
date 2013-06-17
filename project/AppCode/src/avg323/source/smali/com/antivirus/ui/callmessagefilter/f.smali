.class Lcom/antivirus/ui/callmessagefilter/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/f;->a:Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/f;->a:Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;

    const-string v1, "call_message_blocker"

    const-string v2, "call_message_blocker_contact_view"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/f;->a:Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;

    const-class v2, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/f;->a:Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
