.class public final LWUPSYNC/PhotoReqHolder;
.super Ljava/lang/Object;


# instance fields
.field public value:LWUPSYNC/PhotoReq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/PhotoReq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWUPSYNC/PhotoReqHolder;->value:LWUPSYNC/PhotoReq;

    return-void
.end method
