.class public final LWUPSYNC/InitReqHolder;
.super Ljava/lang/Object;


# instance fields
.field public value:LWUPSYNC/InitReq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/InitReq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWUPSYNC/InitReqHolder;->value:LWUPSYNC/InitReq;

    return-void
.end method