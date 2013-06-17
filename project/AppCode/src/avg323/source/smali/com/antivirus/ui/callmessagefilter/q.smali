.class Lcom/antivirus/ui/callmessagefilter/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:[Landroid/widget/CheckBox;

.field final synthetic b:Lcom/antivirus/ui/callmessagefilter/j;

.field private c:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/antivirus/ui/callmessagefilter/j;Ljava/lang/String;[Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/q;->b:Lcom/antivirus/ui/callmessagefilter/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/antivirus/ui/callmessagefilter/q;->a:[Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/q;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/q;->b:Lcom/antivirus/ui/callmessagefilter/j;

    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/j;->a(Lcom/antivirus/ui/callmessagefilter/j;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "call_message_blocker"

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/q;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/q;->a:[Landroid/widget/CheckBox;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
