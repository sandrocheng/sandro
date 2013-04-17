.class abstract Lbtx$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/content/pm/ServiceInfo;

.field protected b:Lcom/tencent/tmsecure/common/ISDKClient;


# direct methods
.method public constructor <init>(Landroid/content/pm/ServiceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtx$a;->a:Landroid/content/pm/ServiceInfo;

    return-void
.end method
