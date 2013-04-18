.class public Lcom/ijinshan/kinghelper/common/ContactItem;
.super Ljava/lang/Object;
.source "ContactItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/ijinshan/kinghelper/common/a;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/common/a;-><init>()V

    sput-object v0, Lcom/ijinshan/kinghelper/common/ContactItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kinghelper/common/ContactItem;-><init>(Landroid/os/Parcel;B)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/ContactItem;->a:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/ContactItem;->b:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/common/ContactItem;->c:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 60
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    .line 61
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/ContactItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/ContactItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget v0, p0, Lcom/ijinshan/kinghelper/common/ContactItem;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
