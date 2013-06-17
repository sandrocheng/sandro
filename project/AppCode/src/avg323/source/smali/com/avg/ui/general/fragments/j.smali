.class public Lcom/avg/ui/general/fragments/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Class;

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/avg/ui/general/fragments/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/avg/ui/general/fragments/j;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/avg/ui/general/fragments/j;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/fragments/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/fragments/j;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/fragments/j;->c:Landroid/os/Bundle;

    return-object v0
.end method
