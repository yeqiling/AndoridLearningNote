.class Lde/measite/smack/AndroidDebugger$4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/measite/smack/AndroidDebugger;->createDebug()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/measite/smack/AndroidDebugger;


# direct methods
.method constructor <init>(Lde/measite/smack/AndroidDebugger;)V
    .locals 0

    iput-object p1, p0, Lde/measite/smack/AndroidDebugger$4;->this$0:Lde/measite/smack/AndroidDebugger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 4

    const-string v0, "SMACK"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger$4;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->dateFormatter:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lde/measite/smack/AndroidDebugger;->access$0(Lde/measite/smack/AndroidDebugger;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Connection closed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger$4;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v2}, Lde/measite/smack/AndroidDebugger;->access$1(Lde/measite/smack/AndroidDebugger;)Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "SMACK"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger$4;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->dateFormatter:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lde/measite/smack/AndroidDebugger;->access$0(Lde/measite/smack/AndroidDebugger;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Connection closed due to an exception ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger$4;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v2}, Lde/measite/smack/AndroidDebugger;->access$1(Lde/measite/smack/AndroidDebugger;)Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public reconnectingIn(I)V
    .locals 4

    const-string v0, "SMACK"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger$4;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->dateFormatter:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lde/measite/smack/AndroidDebugger;->access$0(Lde/measite/smack/AndroidDebugger;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Connection ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger$4;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v2}, Lde/measite/smack/AndroidDebugger;->access$1(Lde/measite/smack/AndroidDebugger;)Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") will reconnect in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "SMACK"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger$4;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->dateFormatter:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lde/measite/smack/AndroidDebugger;->access$0(Lde/measite/smack/AndroidDebugger;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Reconnection failed due to an exception ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger$4;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v2}, Lde/measite/smack/AndroidDebugger;->access$1(Lde/measite/smack/AndroidDebugger;)Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 4

    const-string v0, "SMACK"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger$4;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->dateFormatter:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lde/measite/smack/AndroidDebugger;->access$0(Lde/measite/smack/AndroidDebugger;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Connection reconnected ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger$4;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v2}, Lde/measite/smack/AndroidDebugger;->access$1(Lde/measite/smack/AndroidDebugger;)Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
