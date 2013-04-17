.class interface abstract Lcom/tencent/qqpimsecure/service/SecureService$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/service/SecureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# static fields
.field public static final a:Lyr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyr;

    invoke-direct {v0}, Lyr;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/service/SecureService$b;->a:Lyr;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/content/Intent;)V
.end method

.method public abstract b()V
.end method
