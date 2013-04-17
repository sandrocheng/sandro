.class final Lave;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lky;

.field private synthetic b:Lauu;


# direct methods
.method constructor <init>(Lauu;Lky;)V
    .locals 0

    iput-object p1, p0, Lave;->b:Lauu;

    iput-object p2, p0, Lave;->a:Lky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lave;->b:Lauu;

    iget-object v1, p0, Lave;->a:Lky;

    invoke-static {v0, v1}, Lauu;->a(Lauu;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    return-void
.end method
