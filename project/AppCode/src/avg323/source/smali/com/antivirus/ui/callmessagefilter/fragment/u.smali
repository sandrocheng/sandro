.class Lcom/antivirus/ui/callmessagefilter/fragment/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/s;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/s;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/u;->a:Lcom/antivirus/ui/callmessagefilter/fragment/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/u;->a:Lcom/antivirus/ui/callmessagefilter/fragment/s;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method
